ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('fc-servercheck')
AddEventHandler('fc-servercheck', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('sgoc_opaska')

    if item.count >= 1 then
        xPlayer.removeInventoryItem('sgoc_opaska', 1)
        TriggerClientEvent('fc-proggresheist', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end

end)

RegisterServerEvent('fc-cameracheck')
AddEventHandler('fc-cameracheck', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('bob_hack_2')

    if item.count >= 1 then
        xPlayer.removeInventoryItem('bob_hack_2', 1)
        TriggerClientEvent('fc-cameraoff', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end

end)

RegisterServerEvent('fc-safebomba')
AddEventHandler('fc-safebomba', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('sgoc_bomb')

    if item.count >= 1 then
        xPlayer.removeInventoryItem('bob_hack_2', 1)
        TriggerClientEvent('fc-safe', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end

end)

RegisterServerEvent('fc-key')
AddEventHandler('fc-key', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('sgoc_opaska')

    xPlayer.addInventoryItem('bob_key', 1)
end)


RegisterServerEvent('fc-serverbomb')
AddEventHandler('fc-serverbomb', function(odebrane)
    local interiorid = GetInteriorAtCoords(883.4142, -2282.372, 31.44168)
    ActivateInteriorEntitySet(interiorid, "np_prolog_broken")
    RemoveIpl(interiorid, "np_prolog_broken")
    DeactivateInteriorEntitySet(interiorid, "np_prolog_clean")
    RefreshInterior(interiorid)
end)

RegisterServerEvent('fc-servercheck2')
AddEventHandler('fc-servercheck2', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item2 = xPlayer.getInventoryItem('bobcat_door_explosives')

    if item2.count >= 1 then
        xPlayer.removeInventoryItem('bobcat_door_explosives', 1)
        TriggerClientEvent('fc-bomb1', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end

end)

RegisterServerEvent('fc-servercheck3')
AddEventHandler('fc-servercheck3', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item2 = xPlayer.getInventoryItem("bob_hack_1")

    if item2.count >= 1 then
        TriggerClientEvent('fc-computer:hack2', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end

end)

RegisterServerEvent('fc-servercheck4')
AddEventHandler('fc-servercheck4', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item4 = xPlayer.getInventoryItem('bob_doorcard')

    if item4.count >= 1 then
        xPlayer.removeInventoryItem('bob_doorcard', 1)
        TriggerClientEvent('fc-cardadd2', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end
end)

RegisterServerEvent('fc-hack1item')
AddEventHandler('fc-hack1item', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source

    
    xPlayer.removeInventoryItem('bob_hack_1', 1)
end)

RegisterServerEvent('fc-elektryk')
AddEventHandler('fc-elektryk', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item4 = xPlayer.getInventoryItem('bob_key')

    if item4.count >= 1 then
        xPlayer.removeInventoryItem('bob_key', 1)
        TriggerClientEvent('fc-cameradoor', _source)
    else
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz potrzebnych przedmiotów')
    end
end)

RegisterServerEvent('fc-safebomb')
AddEventHandler('fc-safebomb', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source

    
    xPlayer.removeInventoryItem('bob_big_explosives', 1)
end)

RegisterServerEvent('fc-safelootgive1')
AddEventHandler('fc-safelootgive1', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source

    
    xPlayer.addInventoryItem('bob_prototype_1', 1)
end)

RegisterServerEvent('fc-safelootgive2')
AddEventHandler('fc-safelootgive2', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source

    
    xPlayer.addInventoryItem('bob_prototype_2', 1)
end)

RegisterServerEvent('fc-safelootgive3')
AddEventHandler('fc-safelootgive3', function(odebrane)
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source

    
    xPlayer.addInventoryItem('bob_prototype_3', 1)
end)