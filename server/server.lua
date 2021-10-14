RegisterNetEvent('dst_killfeed:server:playerWasKilled')
AddEventHandler('dst_killfeed:server:playerWasKilled', function(killerId, whoWasKilled, weaponName)
    TriggerClientEvent('dst_killfeed:client:feed', -1, '<strong>' .. tostring(GetPlayerName(killerId)) .. '</strong> <img src="img/'.. tostring(weaponName) ..'.webp" width="30px" style="transform: rotate(-30deg);;"> <strong>' .. tostring(whoWasKilled) .. '</strong>')
end)

RegisterNetEvent('dst_killfeed:server:playerDied')
AddEventHandler('dst_killfeed:server:playerDied', function(whoDied)
    TriggerClientEvent('dst_killfeed:client:feed', -1, '<img src="img/skull.png" width="15px" style="margin-top: 2px;"> <strong>' .. tostring(whoDied) .. '</strong>')
end)