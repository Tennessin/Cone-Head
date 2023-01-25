RegisterCommand("cone", function()
    local ad = "anim@mp_player_intselfiethe_bird"
	local player = GetPlayerPed( -1 )
        
        
        if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, "idle_a", 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
		else
			TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (500)
            AttachEnityToEntity(CreateObject(GetHashKey("prop_roadcone01a"), 0, 0, 0, true, true , true), GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 31086), 0,1 0,1 0, 270, 0, 0, true, true, false, true, 1, true)
            Citizen.Wait(50500)
            ClearPedTasks((GetPlayerPed(-1)))
            DeleteEntity((CreateObject(GetHashKey("prop_roadcone01a"), 0, 0, 0, true, true, true)))
            ShowNotification('You have been ~r~red~s~ coned')
		end     
	end
end, false)
        
        
        


