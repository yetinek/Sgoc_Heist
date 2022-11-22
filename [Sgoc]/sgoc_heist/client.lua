ESX = nil

local heistcheck = false
local computerhack = false
local radiotroll = false
local pcoff = false
local safecheck = false
local termit = true
local key = false
local elektryk = false
local kamery = false
local power = false
local kameryoff = false
local karta = false
local zebrana = false
local zebrana2 = false
local zebrana3 = false
local troll3 = false

local zlecenie = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    modelHash = GetHashKey('a_m_y_bevhills_01')
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    createNPC() 
end)

function createNPC()
    
	created_ped = CreatePed(0, 'a_m_y_bevhills_01' , 860.80, -2266.49, 30.54 -1, 161.1)

	FreezeEntityPosition(created_ped, true)
	SetEntityInvincible(created_ped, true)
	SetBlockingOfNonTemporaryEvents(created_ped, true)
end

exports.qtarget:AddCircleZone("sgocped", vector3(860.85, -2266.38, 30.85), 0.55, {
    name="sgocped",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-heistget",
				icon = "fas fa-hands",
				label = "Weź zlecenie",
			},
		},
		distance = 2.5
})

RegisterNetEvent('fc-heistget', function(job)
    if zlecenie == false then
    zlecenie = true
    else
    ESX.ShowNotification('Masz już zlecenie')
    end
end)

RegisterNetEvent('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:playerLoaded', function(data)
    ESX.PlayerData = data
end)

RegisterNetEvent('esx:sethiddenjob', function(job)
    ESX.PlayerData.hiddenjob = job
end)

RegisterNetEvent('fc-restart')
AddEventHandler('fc-restart', function()
    if zebrana == true and zebrana2 == true and zebrana3 == true then
        ESX.ShowNotification('Zakończyłeś napad, za 1 minutę zakończy się zlecenie')
        Citizen.Wait(60000)
        heistcheck = false
        computerhack = false
        radiotroll = false
        pcoff = false
        safecheck = false
        termit = true
        key = false
        elektryk = false
        kamery = false
        power = false
        kameryoff = false
        zlecenie = false
        karta = false
        zebrana = false
        zebrana2 = false
        zebrana3 = false
        local interiorid = GetInteriorAtCoords(883.4142, -2282.372, 31.44168)
        RemoveIpl(interiorid, "np_prolog_broken")
        DeactivateInteriorEntitySet(interiorid, "np_prolog_broken")
        ActivateInteriorEntitySet(interiorid, "np_prolog_clean")
        RefreshInterior(interiorid)
        Wait(1000)
        ExecuteCommand('dzwi')
        TriggerEvent('fc-sgoc:doors')
    end
    
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    heistcheck = false
    computerhack = false
    radiotroll = false
    pcoff = false
    safecheck = false
    termit = true
    key = false
    elektryk = false
    kamery = false
    power = false
    kameryoff = false
    karta = false
    zebrana = false
    zebrana2 = false
    zebrana3 = false
    interiorid = GetInteriorAtCoords(883.4142, -2282.372, 31.44168)
    RemoveIpl(interiorid, "np_prolog_broken")
    DeactivateInteriorEntitySet(interiorid, "np_prolog_broken")
    ActivateInteriorEntitySet(interiorid, "np_prolog_clean")
    RefreshInterior(interiorid)
    Wait(1000)
    ExecuteCommand('dzwi')
    TriggerEvent('fc-sgoc:doors')
  end)

RegisterCommand('dzwi', function ()
    Citizen.CreateThread(function()
        BobDoors1 = GetClosestObjectOfType(883.48, -2258.53, 30.56, 1.5, 'apa_v_ilev_ss_door8', false, false, false) 
        BobDoors2 = GetClosestObjectOfType(880.89, -2258.30, 30.56, 1.5, 'apa_v_ilev_ss_door7', false, false, false) 
        BobDoors3 = GetClosestObjectOfType(881.61, -2264.66, 30.61, 1.5, 'v_ilev_cd_door2', false, false, false) 
        BobDoors4 = GetClosestObjectOfType(882.03, -2267.88, 30.45, 1.5, 'v_ilev_ss_door03', false, false, false) 
        BobDoors5 = GetClosestObjectOfType(880.65, -2267.93, 30.45, 1.5, 'v_ilev_ss_door03', false, false, false) 
        BobDoors6 = GetClosestObjectOfType(874.06, -2265.65, 30.45, 1.5, 'v_ilev_cd_door2', false, false, false) 
        BobDoors7 = GetClosestObjectOfType(882.83, -2295.37, 30.45, 1.5, 'v_ilev_cd_door3', false, false, false) 
        FreezeEntityPosition(BobDoors1, true)
        FreezeEntityPosition(BobDoors2, true)
        FreezeEntityPosition(BobDoors3, true)
        FreezeEntityPosition(BobDoors4, true)
        FreezeEntityPosition(BobDoors5, true)
        FreezeEntityPosition(BobDoors6, true)
        FreezeEntityPosition(BobDoors7, true)
    end)
end)

RegisterNetEvent('fc-sgoc:doors', function()
    Citizen.CreateThread(function()
        ExecuteCommand('dzwi')
        BobDoors1 = GetClosestObjectOfType(883.48, -2258.53, 30.56, 1.5, 'apa_v_ilev_ss_door8', false, false, false) 
        BobDoors2 = GetClosestObjectOfType(880.89, -2258.30, 30.56, 1.5, 'apa_v_ilev_ss_door7', false, false, false) 
        BobDoors3 = GetClosestObjectOfType(881.61, -2264.66, 30.61, 1.5, 'v_ilev_cd_door2', false, false, false) 
        BobDoors4 = GetClosestObjectOfType(882.03, -2267.88, 30.45, 1.5, 'v_ilev_ss_door03', false, false, false) 
        BobDoors5 = GetClosestObjectOfType(880.65, -2267.93, 30.45, 1.5, 'v_ilev_ss_door03', false, false, false) 
        BobDoors6 = GetClosestObjectOfType(874.06, -2265.65, 30.45, 1.5, 'v_ilev_cd_door2', false, false, false) 
        BobDoors7 = GetClosestObjectOfType(882.83, -2295.37, 30.45, 1.5, 'v_ilev_cd_door3', false, false, false) 
        FreezeEntityPosition(BobDoors1, true)
        FreezeEntityPosition(BobDoors2, true)
        FreezeEntityPosition(BobDoors3, true)
        FreezeEntityPosition(BobDoors4, true)
        FreezeEntityPosition(BobDoors5, true)
        FreezeEntityPosition(BobDoors6, true)
        FreezeEntityPosition(BobDoors7, true)
    end)
end)

------------------------------------------------ NAPAD TARGETY ------------------------------------------------

exports.qtarget:AddCircleZone("sgocdoor1", vector3(882.15, -2258.42, 30.54), 0.3, {
    name="sgocdoor1",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-heiststart",
				icon = "fas fa-hands",
				label = "Otwórz",
                canInteract = function()
                    return zlecenie
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddCircleZone("door2sgoc", vector3(880.98, -2264.67, 30.57), 0.71, {
    name="door2sgoc",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-bomb01",
				icon = "fas fa-bomb",
				label = "Otwórz",
                canInteract = function()
                    return termit == true
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddCircleZone("sgocdoorpukpuk", vector3(884.85, -2266.95, 30.72), 0.71, {
    name="sgocdoorpukpuk",
    heading=355,
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-pukpuk",
				icon = "fas fa-hands",
				label = "Zapukaj",
                 canInteract = function()
                     return heistcheck
                 end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddCircleZone("cardsgoc", vector3(876.92, -2262.94, 30.67), 0.17, {
    name="cardsgoc",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-cardidk",
				icon = "fas fa-hands",
				label = "Odbij Kartę",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("computersgoc", vector3(875.25, -2263.6, 30.47), 0.4, {
    name="computersgoc",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-computeroff",
				icon = "fas fa-hands",
				label = "Wyłącz Komputer",
                 canInteract = function()
                     return computerhack == true 
                 end,
			},
            {
				event = "fc-computer:hack",
				icon = "fas fa-hands",
				label = "Włam się",
                 canInteract = function()
                     return computerhack == true
                 end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("sgocradio", vector3(875.84, -2267.92, 30.82), 0.6, {
    name="sgocradio",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-offradio",
				icon = "fas fa-hands",
				label = "Wyłącz Radio",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("sgocsejf", vector3(890.14, -2284.74, 30.82), 1.45, {
    name="sgocsejf",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-safeitem",
				icon = "fas fa-bomb",
				label = "Podłóż Ładunek",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgocskrzynia1", vector3(880.2, -2295.56, 30.47), 1.5, 1, {
    name="sgocskrzynia1",
    heading=0,
    --debugPoly=true,
    minZ=29.63,
    maxZ=31.63
	}, {
		options = {
			{
				event = "fc-skrzyniaklucze",
				icon = "fas fa-hands",
				label = "Otwórz Skrzynię",
                canInteract = function()
                    return heistcheck
                end,

			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgocskrzynia2", vector3(875.08, -2118.31, 31.23), 1, 3.2, {
    name="sgocskrzynia2",
    heading=265,
    --debugPoly=true,
    minZ=27.83,
    maxZ=31.83
	}, {
		options = {
			{
				event = "fc-skrzyniapusta",
				icon = "fas fa-hands",
				label = "Otwórz Skrzynię",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgocskrzynia3", vector3(875.48, -2115.61, 31.23), 1, 2.0, {
    name="sgocskrzynia3",
    heading=270,
    --debugPoly=true,
    minZ=27.83,
    maxZ=31.83
	}, {
		options = {
			{
				event = "fc-skrzyniapusta",
				icon = "fas fa-hands",
				label = "Otwórz Skrzynię",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgocskrzynia4", vector3(878.68, -2113.25, 31.23), 1, 1.4, {
    name="sgocskrzynia4",
    heading=0,
    --debugPoly=true,
    minZ=28.03,
    maxZ=32.03
	}, {
		options = {
			{
				event = "fc-skrzyniapusta",
				icon = "fas fa-hands",
				label = "Otwórz Skrzynię",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgocskrzynia5", vector3(877.86, -2108.79, 31.23), 3, 3, {
    name="sgocskrzynia5",
    heading=355,
    --debugPoly=true,
    minZ=28.03,
    maxZ=32.03
	}, {
		options = {
			{
				event = "fc-skrzyniapusta",
				icon = "fas fa-hands",
				label = "Otwórz Skrzynię",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgocpradlol", vector3(896.37, -2290.34, 30.47), 1, 1.2, {
    name="sgocpradlol",
    heading=85,
    --debugPoly=true,
    minZ=27.47,
    maxZ=31.47
	}, {
		options = {
			{
				event = "fc-electricalbox", 
				icon = "fas fa-hands",
				label = "Otwórz",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddBoxZone("sgocdoorcamers", vector3(883.33, -2295.73, 30.47), 1, 1.4, {
    name="sgocdoorcamers",
    heading=265,
    --debugPoly=true,
    minZ=28.63,
    maxZ=32.63
	}, {
		options = {
			{
				event = "fc-cameraroom",
				icon = "fas fa-hands",
				label = "Otwórz Drzwi",
                canInteract = function()
                    return elektryk == true 
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgoczamekdestroy", vector3(884.87, -2295.89, 30.47), 1, 1.4, {
    name="sgoczamekdestroy",
    heading=265,
    --debugPoly=true,
    minZ=28.23,
    maxZ=32.23
	}, {
		options = {
			{
				event = "fc-szafkadestroy",
				icon = "fas fa-hands",
				label = "Wyrwij zamek",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddCircleZone("sgocpizza", vector3(881.71, -2298.77, 30.47), 1.1, {
    name="sgocpizza",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-pizzasgoc", 
				icon = "fas fa-hands",
				label = "Weź Kawałek",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("karta", vector3(874.4, -2121.34, 30.78), 0.45, {
    name="karta",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "Sgoc:Karta", 
				icon = "fas fa-hands",
				label = "Odbij Karte",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("sgocdelatecamera", vector3(887.43, -2299.24, 30.47), 0.4, {
    name="sgocdelatecamera",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-camera:hack", 
				icon = "fas fa-hands",
				label = "Usuń zapis z Kamer",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("sgocoffcamerachuj", vector3(889.09, -2296.98, 30.47), 0.4, {
    name="sgocoffcamerachuj",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-cameraoffez", 
				icon = "fas fa-hands",
				label = "Wyłącz Kamery",
                canInteract = function()
                    return heistcheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddBoxZone("sgoctroll", vector3(873.48, -2265.56, 30.47), 1, 1.4, {
    name="sgoctroll",
    heading=355,
    --debugPoly=true,
    minZ=28.63,
    maxZ=32.63
	}, {
		options = {
			{
				event = "fc-bomb2",
				icon = "fas fa-bomb",
				label = "Otwórz",
                canInteract = function()
                    return troll3 == true
               end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddBoxZone("sgoctroll2", vector3(908.15, -2110.05, 31.23), 1, 3.6, {
    name="sgoctroll2",
    heading=355,
    --debugPoly=true,
    minZ=28.83,
    maxZ=32.83
	}, {
		options = {
			{
				event = "fc-xxx",
				icon = "fas fa-hands",
				label = "Wyłam Zamek",
                canInteract = function()
                    return radiotroll
                end,
			},
		},
		distance = 2.5
})

exports.qtarget:AddCircleZone("sgoctelefon", vector3(879.25, -2267.99, 30.7), 0.19, {
    name="sgoctelefon",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-phonebomb", 
				icon = "fas fa-hands",
				label = "Zadzwoń",
                canInteract = function()
                    return safecheck
                end,
			},
		},
		distance = 1.5
})

exports.qtarget:AddCircleZone("sgockarta", vector3(882.98, -2268.23, 30.92), 0.18, {
    name="sgockarta",
    useZ=true,
    --debugPoly=true
	}, {
		options = {
			{
				event = "fc-cardadd", 
				icon = "fas fa-hands",
				label = "Przyłóż kartę",
			},
		},
		distance = 1.5
})

-- SAFE LOOT

exports.qtarget:AddBoxZone("sgoc_safeloot1", vector3(886.86, -2282.11, 30.47), 1, 2.0, {
    name="sgoc_safeloot1",
    heading=355,
    --debugPoly=true,
    minZ=26.87,
    maxZ=30.87
	}, {
		options = {
			{
				event = "fc-safegiveprototype1", 
				icon = "fas fa-hands",
				label = "Weź prototyp",
			},
		},
		distance = 2.0
})

exports.qtarget:AddBoxZone("sgoc_safeloot2", vector3(882.01, -2282.86, 30.47), 1, 1.8, {
    name="sgoc_safeloot2",
    heading=65,
    --debugPoly=true,
    minZ=27.07,
    maxZ=31.07
	}, {
		options = {
			{
				event = "fc-safegiveprototype2", 
				icon = "fas fa-hands",
				label = "Weź prototyp",
			},
		},
		distance = 2.0
})

exports.qtarget:AddBoxZone("sgoc_safeloot3", vector3(882.57, -2285.69, 30.47), 1, 1.8, {
    name="sgoc_safeloot3",
    heading=335,
    --debugPoly=true,
    minZ=27.07,
    maxZ=31.07
	}, {
		options = {
			{
				event = "fc-safegiveprototype3", 
				icon = "fas fa-hands",
				label = "Weź prototyp",
			},
		},
		distance = 2.0
})

exports.qtarget:AddBoxZone("sgoc_safeloot3", vector3(882.57, -2285.69, 30.47), 1, 1.8, {
    name="sgoc_safeloot3",
    heading=335,
    --debugPoly=true,
    minZ=27.07,
    maxZ=31.07
	}, {
		options = {
			{
				event = "fc-safegiveprototype3", 
				icon = "fas fa-hands",
				label = "Weź prototyp",
			},
		},
		distance = 2.0
})

exports.qtarget:AddBoxZone("sgoc_safeloot3", vector3(882.57, -2285.69, 30.47), 1, 1.8, {
    name="sgoc_safeloot3",
    heading=335,
    --debugPoly=true,
    minZ=27.07,
    maxZ=31.07
	}, {
		options = {
			{
				event = "fc-safegiveprototype3", 
				icon = "fas fa-hands",
				label = "Weź prototyp",
			},
		},
		distance = 2.0
})

------------------------------------------------ NAPAD EVENT ------------------------------------------------

RegisterNetEvent('fc-cardadd')
AddEventHandler('fc-cardadd', function()
    if karta == true then
    TriggerServerEvent('fc-servercheck4')
    else 
        ESX.ShowNotification('Nie możesz tego zrobić')
    end
end)

RegisterNetEvent('fc-bomb01')
AddEventHandler('fc-bomb01', function()
    TriggerServerEvent('fc-servercheck2')
end)


RegisterNetEvent('fc-cardadd2')
AddEventHandler('fc-cardadd2', function()
    karta = false
    FreezeEntityPosition(BobDoors4, false)
    FreezeEntityPosition(BobDoors5, false)
end)

RegisterNetEvent('fc-safegiveprototype1')
AddEventHandler('fc-safegiveprototype1', function()
    if zebrana == false then
    TriggerServerEvent('fc-safelootgive1')
    zebrana = true
    TriggerEvent('fc-restart')
    else 
        ESX.ShowNotification('Skrzynia jest pusta')
    end
end)

RegisterNetEvent('fc-safegiveprototype2')
AddEventHandler('fc-safegiveprototype2', function()
    if zebrana2 == false then
    TriggerServerEvent('fc-safelootgive2')
    zebrana2 = true
    TriggerEvent('fc-restart')
    else
        ESX.ShowNotification('Skrzynia jest pusta')
    end
end)

RegisterNetEvent('fc-safegiveprototype3')
AddEventHandler('fc-safegiveprototype3', function()
    if zebrana3 == false then
    TriggerServerEvent('fc-safelootgive3')
    zebrana3 = true
    TriggerEvent('fc-restart')
    else
        ESX.ShowNotification('Skrzynia jest pusta')
    end
end)

RegisterNetEvent('fc-safe')
AddEventHandler('fc-safe', function()
if power == true and kameryoff == true and key == true then
    local playerPed = PlayerPedId()
    TriggerServerEvent('fc-safebomb')
    SetEntityHeading(playerPed, 82.6527)
    SetEntityCoords(playerPed, 891.08, -2284.82, 30.45)
    local pedCo = GetEntityCoords(playerPed), GetEntityRotation(playerPed)
    plantObject = CreateObject(GetHashKey(''), pedCo, 1, 1, 0)
    SetEntityCollision(plantObject, false, true)
    AttachEntityToEntity(plantObject, playerPed, GetPedBoneIndex(playerPed, 28422), 0, 0, 0, 0.0, 0.0, 200.0, true, true, false, true, 1, true)
    exports['bixbi_core']:playAnim(playerPed, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', -1, false)
    Citizen.Wait(4000)
    DetachEntity(plantObject, 1, 1)
    FreezeEntityPosition(plantObject, true)
    Citizen.Wait(1000)
    ESX.ShowNotification('Ładunki są gotowe do wysadzenia')
    safecheck = true
    else 
        ESX.ShowNotification('Nie możesz tego zrobić')
    end
end)

RegisterNetEvent('fc-safeitem')
AddEventHandler('fc-safeitem', function()
    TriggerServerEvent('fc-safebomba')
end)

RegisterNetEvent('fc-phonebomb')
AddEventHandler('fc-phonebomb', function()
    local input = lib.inputDialog('Telefon', {'Wpisz numer telefonu'})

    if not input then return end
    local numer = input[1]

    if numer == '87153' then
    ESX.ShowNotification('Aktywowano bombe')
    TriggerEvent('fc-bobcatsafeopen')
    else
    ESX.ShowNotification('Zły numer')
end
end)

RegisterNetEvent('fc-bobcatsafeopen')
AddEventHandler('fc-bobcatsafeopen', function()
Citizen.CreateThread(function()
	DoScreenFadeOut(1000)
	Wait(1250)
	DoScreenFadeIn(1000)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 895.56, -2288.59, 30.45, 0, 0.00, 0.00, 70.00, false, 0) 
    PointCamAtCoord(cam, 889.75, -2284.60, 30.45)
    SetCamActive(cam, true)
    RenderScriptCams(true, true, 1, true, true)
    SetFocusPosAndVel(895.56, -2288.59, 0.0, 0.0, 0.0)
    DisplayHud(false)
    DisplayRadar(false)
    Wait(2500)
	ShakeCam(cam, 'SMALL_EXPLOSION_SHAKE', 2.5)
    AddExplosion(890.7849, -2284.88, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.43, -2284.99, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.127, -2283.44, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(891.89, -2286.75, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(893.80, -2288.21, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(890.7849, -2284.88, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.43, -2284.99, 30.45, 32, 150000.0, true, false, 4.0)
	Wait(500)
	ShakeCam(cam, 'SMALL_EXPLOSION_SHAKE', 2.5)
    AddExplosion(890.7849, -2284.88, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.43, -2284.99, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.127, -2283.44, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(891.89, -2286.75, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(893.80, -2288.21, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(890.7849, -2284.88, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.43, -2284.99, 30.45, 32, 150000.0, true, false, 4.0)
	Wait(500)
	ShakeCam(cam, 'SMALL_EXPLOSION_SHAKE', 2.5)
    AddExplosion(890.7849, -2284.88, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.43, -2284.99, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.127, -2283.44, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(891.89, -2286.75, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(893.80, -2288.21, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(890.7849, -2284.88, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(894.0084, -2284.90, 30.45, 32, 150000.0, true, false, 4.0)
    AddExplosion(892.43, -2284.99, 30.45, 32, 150000.0, true, false, 4.0)
    local interiorid = GetInteriorAtCoords(883.4142, -2282.372, 31.44168)
    ActivateInteriorEntitySet(interiorid, "np_prolog_broken")
    RemoveIpl(interiorid, "np_prolog_broken")
    DeactivateInteriorEntitySet(interiorid, "np_prolog_clean")
    RefreshInterior(interiorid)
	TriggerServerEvent('fc-serverbomb')
    Wait(3000)
	DoScreenFadeOut(1000)
	Wait(1250)
	DoScreenFadeIn(1000)
    RenderScriptCams(false)
    DestroyAllCams(true)
    SetFocusEntity(GetPlayerPed(PlayerId())) 
end)
end)

RegisterNetEvent('fc-heiststart')
AddEventHandler('fc-heiststart', function()
    TriggerServerEvent('fc-servercheck')
end)

RegisterNetEvent('fc-proggresheist')
AddEventHandler('fc-proggresheist', function()
    heistcheck = true
    radiotroll = true
    open = true
    FreezeEntityPosition(BobDoors1, false)
    FreezeEntityPosition(BobDoors2, false)
    print('CLIENT TO SERVER TO CLIENT CHECK')
    TriggerEvent('fc-alarm')
end)

RegisterNetEvent('fc-cardidk')
AddEventHandler('fc-cardidk', function()
    ESX.ShowNotification('Dzień dobry Simon')
end)

RegisterNetEvent('fc-pukpuk')
AddEventHandler('fc-pukpuk', function()
    local pid = PlayerPedId()
    local playerPed = PlayerPedId()
    SetEntityHeading(playerPed, 269.9480)
    SetEntityCoords(playerPed, 884.28, -2266.65, 30.45-1)
	RequestAnimDict("timetable@jimmy@doorknock@")
	while (not HasAnimDictLoaded("timetable@jimmy@doorknock@")) do Citizen.Wait(0) end
	TaskPlayAnim(pid,"timetable@jimmy@doorknock@","knockdoor_idle",100.0, 100.0, 0.3, 100, 0.2, 0, 0, 0)
    Wait(3000)
    ESX.ShowNotification('Przynieś mi coś słodkiego')
    ClearPedTasks(pid)
    StopAnimTask(pid, "timetable@jimmy@doorknock@","knockdoor_idle", 1.0)
end)

RegisterNetEvent('fc-computeroff')
AddEventHandler('fc-computeroff', function()
    ESX.ShowNotification('Wyłączyłeś Komputer')
    pcoff = true
end)

RegisterNetEvent('fc-computer:hack')
AddEventHandler('fc-computer:hack', function()
    if pcoff == false then
        TriggerServerEvent('fc-servercheck3')
    else
        ESX.ShowNotification("Komputer jest wyłączony")
    end
end)

RegisterNetEvent('fc-computer:hack2')
AddEventHandler('fc-computer:hack2', function()
    local input = lib.inputDialog('Czy napewno chcesz wyłączyć komputer?', {
        { type = 'select', label = '', options = {
            { value = 'option1', label = 'Tak' },
            { value = 'option2', label = 'Tak' },
        }},
    })
    
    if not input then return end
    local wybrane1 = input[1]
    local wybrane2 = input[2]
    
    print(lockerNumber, lockerPasscode)
    
    if wybrane1 == 'option1' then
    ESX.ShowNotification('Aktywowano Zabezpieczenia')
    else
    local success = exports['sgoc_pc']:WordsGuess()

    if success then

        ESX.ShowNotification('Udało ci się odblokować drzwi, wprowadź teraz kartę')
        TriggerServerEvent('fc-hack1item')
        karta = true
        computerhack = false

    elseif not success then

    ESX.ShowNotification('Nie udało ci się włamać do komputera')
    end
    end
end)

RegisterNetEvent('fc-bomb1')
AddEventHandler('fc-bomb1', function()
    
    local playerPed = PlayerPedId()
    termit = false
    troll3 = true
    TriggerServerEvent('fc-bombcheck')
    SetEntityHeading(playerPed, 172.2080)
    SetEntityCoords(playerPed, 881.02, -2263.68, 30.45)
    local pedCo = GetEntityCoords(playerPed), GetEntityRotation(playerPed)
    plantObject = CreateObject(GetHashKey('hei_prop_heist_thermite'), pedCo, 1, 1, 0)
    SetEntityCollision(plantObject, false, true)
    AttachEntityToEntity(plantObject, playerPed, GetPedBoneIndex(playerPed, 28422), 0, 0, 0, 0.0, 0.0, 200.0, true, true, false, true, 1, true)
    exports['bixbi_core']:playAnim(playerPed, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', -1, false)
    Citizen.Wait(4000)
    DetachEntity(plantObject, 1, 1)
    FreezeEntityPosition(plantObject, true)
    Citizen.Wait(1000)
    ESX.ShowNotification('Odsuń się od drzwi')
    Wait(5000)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local ptfx

    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
        Citizen.Wait(1)
    end
        ptfx = vector3(880.49, -2263.60, 30.36)
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Citizen.Wait(7500)
    StopParticleFxLooped(effect, 0)
    computerhack = true
    DeleteObject(plantObject)
    FreezeEntityPosition(BobDoors3, false)
end)

RegisterNetEvent('fc-bomb2')
AddEventHandler('fc-bomb2', function()
    local playerPed = PlayerPedId()
    TriggerServerEvent('fc-bombcheck')
    SetEntityHeading(playerPed, 91.6899)
    SetEntityCoords(playerPed, 874.5511, -2265.5785, 30.2303)
    local pedCo = GetEntityCoords(playerPed), GetEntityRotation(playerPed)
    plantObject = CreateObject(GetHashKey('hei_prop_heist_thermite'), pedCo, 1, 1, 0)
    SetEntityCollision(plantObject, false, true)
    AttachEntityToEntity(plantObject, playerPed, GetPedBoneIndex(playerPed, 28422), 0, 0, 0, 0.0, 0.0, 200.0, true, true, false, true, 1, true)
    exports['bixbi_core']:playAnim(playerPed, 'anim@heists@ornate_bank@thermal_charge', 'thermal_charge', -1, false)
    Citizen.Wait(4000)
    DetachEntity(plantObject, 1, 1)
    FreezeEntityPosition(plantObject, true)
    Citizen.Wait(1000)
    ESX.ShowNotification('Odsuń się od drzwi')
    Wait(5000)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local ptfx

    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
        Citizen.Wait(1)
    end
        ptfx = vector3(873.76, -2264.15, 30.45)
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Citizen.Wait(7500)
    StopParticleFxLooped(effect, 0)
    computerhack = true
    DeleteObject(plantObject)
    FreezeEntityPosition(BobDoors6, false)
    troll3 = false
end)

RegisterNetEvent('fc-offradio')
AddEventHandler('fc-offradio', function()
    if radiotroll == true then
    ESX.ShowNotification('Radio zostało wyłączone')
    radiotroll = false
    else
    ESX.ShowNotification('Już wyłączyłeś Radio')
    end
end)

RegisterNetEvent('fc-skrzyniaklucze')
AddEventHandler('fc-skrzyniaklucze', function()
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    if weapon ~= GetHashKey('WEAPON_CROWBAR') then 
        ESX.ShowNotification('Nie możesz tego zrobić')
    else
        TriggerEvent('fc-skrzyniaklucze5')
    end
end)

RegisterNetEvent('fc-skrzyniaklucze5')
AddEventHandler('fc-skrzyniaklucze5', function()
    if key == false then
        TriggerServerEvent('fc-key')
        elektryk = true
        key = true
    else
        ESX.ShowNotification('Ta skrzynia jest pusta')
    end
end)

RegisterNetEvent('fc-skrzyniapusta')
AddEventHandler('fc-skrzyniapusta', function()
    ESX.ShowNotification('Skrzynia jest pusta')
end)

RegisterNetEvent('fc-electricalbox')
AddEventHandler('fc-electricalbox', function()
    local success = exports['sgoc_power']:Matching()

    if success then

        ESX.ShowNotification('Wyłączyłeś zabezpieczenienia')
        power = true

    elseif not success then

    ESX.ShowNotification('Nie Udane')
    end
end)

RegisterNetEvent('fc-cameraroom')
AddEventHandler('fc-cameraroom', function()
    TriggerServerEvent('fc-elektryk')
end)

RegisterNetEvent('fc-cameradoor')
AddEventHandler('fc-cameradoor', function()
    FreezeEntityPosition(BobDoors7, false)
    elektryk = false
end)

RegisterNetEvent('fc-pizzasgoc')
AddEventHandler('fc-pizzasgoc', function()
    ESX.ShowNotification('Pizza jest zepsuta')
end)

RegisterNetEvent('fc-szafkadestroy')
AddEventHandler('fc-szafkadestroy', function()
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    if weapon ~= GetHashKey('WEAPON_CROWBAR') then 
    ESX.ShowNotification('Nie masz potrzebnych Przedmiotów')
    else
    TriggerServerEvent('fc-skryptalom')
    end
end)

RegisterNetEvent('fc-camera:hack')
AddEventHandler('fc-camera:hack', function()
    if kamery == true then
    local success = exports['sgoc_camera']:StartCable()
    else
    ESX.ShowNotification('Najpierw wyłącz Kamery')
    if success then

    ESX.ShowNotification('Usunięto zapis z kamer')
    kameryoff = true

    elseif not success then
        end
    end
end)

RegisterNetEvent('fc-cameraoffez')
AddEventHandler('fc-cameraoffez', function()
    if kamery == false then
    TriggerServerEvent('fc-cameracheck')
    end
end)

RegisterNetEvent('fc-cameraoff')
AddEventHandler('fc-cameraoff', function()
    if kamery == false then
        ESX.ShowNotification('Wyłączono kamery')
        kamery = true 
    else
        ESX.ShowNotification('Kamery są już wyłączone')
    end
end)

RegisterNetEvent("Sgoc:Karta")
AddEventHandler("Sgoc:Karta", function()
    ESX.ShowNotification('Dzień dobry Simeon')
end)


RegisterNetEvent('fc-alarm')
AddEventHandler('fc-alarm', function()
        local xSound = exports["xsound"] 
        local starekordy = GetEntityCoords(PlayerPedId())
        Start = true
        TriggerEvent('ox_doorlock:setState', Sgoc_Start, 13)
        if(not xSound:soundExists("alarm")) then
            xSound:PlayUrlPos("alarm", 'https://www.youtube.com/watch?v=9nK6od8Fm9o', 0.15, GetEntityCoords(PlayerPedId()), false)
            xSound:Distance("alarm", 28.0)
            xSound:Destroy("alarm2")
            xSound:PlayUrlPos("alarm2", 'https://www.youtube.com/watch?v=9nK6od8Fm9o', 0.15, starekordy, false)
            xSound:Distance("alarm2", 28.0)
        else
            xSound:Destroy("alarm")
            xSound:PlayUrlPos("alarm", 'https://www.youtube.com/watch?v=9nK6od8Fm9o', 0.15, GetEntityCoords(PlayerPedId()), false)
            xSound:Distance("alarm", 28.0)
            xSound:Destroy("alarm2")
            xSound:PlayUrlPos("alarm2", 'https://www.youtube.com/watch?v=9nK6od8Fm9o', 0.15, starekordy, false)
            xSound:Distance("alarm2", 28.0)
        end
    end)