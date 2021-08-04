
local Tunnel = module("vrp","lib/Tunnel")
a = "emp-"
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

trabalhando2 = GetCurrentResourceName()
vServer = Tunnel.getInterface("emp-roupasvoltz")







----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT DESENVOLVIDO POR voltz#1762

--ENTRE EM MINHA LOJA! DISCORD: https://discord.gg/qarQmFYFnz

--NÃO MUDE O NOME DO SCRIPT, SENÃO IRÁ PARAR DE FUNCIONAR!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




rota = false
trabalhando = false
portasabertas = false
carregando = false 
minimo3 = 1
quantidade = 0
portasfechadas = false
model = 1945374990
voltzR = false
campainha = false
etapa = 0 
draw = false
c = a.."voltz"
voltzP = false
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT DESENVOLVIDO POR voltz#1762

--ENTRE EM MINHA LOJA! DISCORD: https://discord.gg/qarQmFYFnz

--NÃO MUDE O NOME DO SCRIPT, SENÃO IRÁ PARAR DE FUNCIONAR!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


CreateThread(function()
    n = c.."roupas"
    repeat
        voltz = 1000
        for k,v in pairs(locs) do
            local coords = locs[k].voltzlocs
            local ped = PlayerPedId()
            local distance = GetDistanceBetweenCoords(GetEntityCoords(ped), locs[k].x, locs[k].y, locs[k].z, true)
            local minimo = 10
            local minimo2 = 10
            if trabalhando == false then
                if distance <= minimo and trabalhando == false then
                    voltz = 1
                    DrawMarker(23,locs[k].x,locs[k].y,locs[k].z-0.96, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5,0,250,154, 180, 0, 0, 0, 0)
                end
                if distance <= minimo2 and trabalhando == false then
                    DrawText3D(locs[k].x,locs[k].y,locs[k].z,"Pressione [~g~E~w~] para entrar em ~g~SERVIÇO~w~.")
                end
                if distance <= minimo3 and trabalhando == false and trabalhando2 == n then
                    if IsControlJustPressed(0, 46) and trabalhando == false  then
                        trabalhando = true
                        TriggerEvent('SairServiço')
                        spawnVoltz()
                        VoltzObject()
                        Fade(1000)
                        voltzResources()
                    end
                end
            end
        end
        Wait(voltz)
    until false 
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT DESENVOLVIDO POR voltz#1762

--ENTRE EM MINHA LOJA! DISCORD: https://discord.gg/qarQmFYFnz

--NÃO MUDE O NOME DO SCRIPT, SENÃO IRÁ PARAR DE FUNCIONAR!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



function spawnVoltz()
    local voltz1 = GetHashKey('mule4')
    repeat 
        RequestModel('mule4')
        Wait(1)
    until HasModelLoaded('mule4')
    for k,v in pairs(locscam) do
        ped = PlayerPedId()
        coords2 = locscam[k].voltzcam
        SetTimeout(1000, function()
            vehicle = CreateVehicle('mule4', locscam[k].x, locscam[k].y,locscam[k].z, 270.05, true, true)
            SetVehicleIsStolen(vehicle,false)
            SetEntityHeading(vehicle, 270.05)
            SetVehicleOnGroundProperly(vehicle)
            SetEntityInvincible(vehicle,false)
            SetVehicleNumberPlateText(vehicle,vRP.getRegistrationNumber())
            Citizen.InvokeNative(0xAD738C3085FE7E11,vehicle,true,true)
            SetVehicleHasBeenOwnedByPlayer(vehicle,true)
            SetVehicleDirtLevel(vehicle,0.0)
            SetVehRadioStation(vehicle,"OFF")
            SetVehicleEngineOn(GetVehiclePedIsIn(ped,false),true)
            SetModelAsNoLongerNeeded(voltz1)
        end)
    end
end
RegisterNetEvent('SairServiço')
AddEventHandler('SairServiço',function()
    while trabalhando do
        if IsControlJustPressed(0,168) then
            quantidade = 0
            etapas = 0
            trabalhando = false
            campainha = false
            obj = false
            voltzi = false
            npc = false
            fim = false
            rota = false
            voltzR = false
            carregando = false
            portasfechadas = false
            portasabertas = false
            RemoveBlip(blips)
            TriggerEvent('Notify','importante','Você saiu de serviço!')
            SetEntityAsNoLongerNeeded(npc)
            SetEntityAsNoLongerNeeded(npc2)
            Fade(1000)
            if DoesEntityExist(vehicle) then
                TriggerServerEvent("trydeleteveh",VehToNet(vehicle))
            end
            if DoesEntityExist(object1) then
                DetachEntity(object1,false,false)
                TriggerServerEvent("trydeleteobj",ObjToNet(object1))              
            end
            if DoesEntityExist(object2) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object2))
            end
            if DoesEntityExist(object3) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object3))
            end
            if DoesEntityExist(object4) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object4))
            end
            if DoesEntityExist(object5) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object5))
            end
            if DoesEntityExist(object6) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object6))
            end
            if DoesEntityExist(object7) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object7))
            end
            if DoesEntityExist(object8) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object8))
            end
            if DoesEntityExist(object9) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object9))
            end
            if DoesEntityExist(object10) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object10))
            end
            if DoesEntityExist(object11) then
                TriggerServerEvent("trydeleteobj",ObjToNet(object11))
            end
            return
        end
        Citizen.Wait(5)
    end
end)



function voltzResources()
    while trabalhando do
        voltz = 1000
        ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local vx,vy,vz = table.unpack(GetOffsetFromEntityInWorldCoords(vehicle,0.0, -1.0, 1.0))
        if not IsPedInAnyVehicle(ped) and Vdist(x,y,z,vx,vy,vz) <= 7 and portasabertas == false then
            voltz = 1
            DrawText3D(vx,vy,vz,"Pressione [~g~E~w~] para abrir as ~g~PORTAS~w~.")
            if IsControlJustPressed(0,46) then
                portasabertas = true
                SetVehicleDoorOpen(vehicle, 2)
                SetVehicleDoorOpen(vehicle, 3)
            end
        end
        for k,v in pairs(locscami) do
            distance2 = GetDistanceBetweenCoords(GetEntityCoords(ped), locscami[k].x, locscami[k].y, locscami[k].z, true)
            minimo3 = 20
        end
        if portasabertas == true and distance2 <= minimo3 and not IsPedInAnyVehicle(ped) and portasfechadas == false then
            voltz = 1
            for k,v in pairs(locscax) do 
                DrawMarker(21,locscax[k].x,locscax[k].y-0.5,locscax[k].z-0.30, 0, 0, 0, 0, 0, 0, 0.90, 0.90, 0.90,0,250,154, 180, 1, 0, 0, 0)
                drawTxt('Pegue as caixas e coloque dentro do ~g~CAMINHÃO~w~\n'.."Você colocou ".. tonumber(quantidade).. " de ~g~10 CAIXAS!",8,0.5,0.92,0.35,255,255,255,255)
                distance3 = GetDistanceBetweenCoords(GetEntityCoords(ped), locscax[k].x,locscax[k].y,locscax[k].z,true)
                minimo4 = 1.2
                if distance3 <= minimo4 then
                    if IsControlJustPressed(0,46) and carregando == false then
                        vRP.playAnim(true,{{"amb@world_human_gardener_plant@female@base","base_female"}},false) 
                        FreezeEntityPosition(ped, true)
                        SetTimeout(3000,function()
                            FreezeEntityPosition(ped, false)
                            carregando = true
                            ResetPedMovementClipset(PlayerPedId(),0)
                            SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                        end)
                    end
                end
                voltz = 1
                if Vdist(x,y,z,vx,vy,vz) <= 4.6 and portasabertas and carregando == true then
                    DrawText3D(vx,vy,vz,"Pressione [~g~E~w~] para colocar as ~g~CAIXAS~w~.")
                    distance5 = GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(vehicle), true)
                    minimo6 = 7.0
                    for k,v in pairs(props) do
                        if IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 0 and carregando == true then
                            object1 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops1'].x,props['voltzprops1'].y,props['voltzprops1'].z-0.99,true,true,true)
                            AttachEntityToEntity(object1,vehicle,0.0,-1.0,1.5,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object1,true)
                            vRP.DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 1 and carregando == true then
                            object2 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops2'].x,props['voltzprops2'].y,props['voltzprops2'].z-0.99,true,true,true)
                            AttachEntityToEntity(object2,vehicle,0.0,0.0,1.5,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object2,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 2 and carregando == true then
                            object3 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops3'].x,props['voltzprops3'].y,props['voltzprops3'].z-0.99,true,true,true)
                            AttachEntityToEntity(object3,vehicle,0.0,1.0,1.5,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object3,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 3 and carregando == true then
                            object4 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops4'].x,props['voltzprops4'].y,props['voltzprops4'].z-0.99,true,true,true)
                            AttachEntityToEntity(object4,vehicle,0.0,-1.0,0.5,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object4,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 4 and carregando == true then
                            object5 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops5'].x,props['voltzprops5'].y,props['voltzprops5'].z-0.99,true,true,true)
                            AttachEntityToEntity(object5,vehicle,0.0,0.0,0.5,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object5,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 5 and carregando == true then
                            object6 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops6'].x,props['voltzprops6'].y,props['voltzprops6'].z-0.99,true,true,true)
                            AttachEntityToEntity(object6,vehicle,0.0,1.0,0.5,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object6,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 6 and carregando == true then
                            object7 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops7'].x,props['voltzprops7'].y,props['voltzprops7'].z-0.99,true,true,true)
                            AttachEntityToEntity(object7,vehicle,0.0,-1.0,-1.0,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object7,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 7 and carregando == true then
                            object8 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops8'].x,props['voltzprops8'].y,props['voltzprops8'].z-0.99,true,true,true)
                            AttachEntityToEntity(object8,vehicle,0.0,0.0,-1.0,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object8,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 8 and carregando == true then
                            object9 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops9'].x,props['voltzprops9'].y,props['voltzprops9'].z-0.99,true,true,true)
                            AttachEntityToEntity(object9,vehicle,0.0,1.0,-1.0,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object9,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 9 and carregando == true then
                            object10 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops10'].x,props['voltzprops10'].y,props['voltzprops10'].z-0.99,true,true,true)
                            AttachEntityToEntity(object10,vehicle,0.0,0.0,-2.3,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object10,true)
                            vRP._DeletarObjeto()
                            carregando = false
                            quantidade = quantidade + 1 
                        elseif IsControlJustPressed(0, 46) and distance5 <= minimo6 and quantidade == 10 and carregando == true then
                            object11 = CreateObject(GetHashKey('hei_prop_heist_box'),props['voltzprops11'].x,props['voltzprops11'].y,props['voltzprops11'].z-0.99,true,true,true)
                            AttachEntityToEntity(object1,vehicle,0.0,0.0,-3.0,0.10,0.0,0.0,0.0,false,false,true,false,2,true)
                            FreezeEntityPosition(object1,true)
                            vRP._DeletarObjeto()
                            carregando = false
                        end 
                    end
                end
                if quantidade == 10 and portasfechadas == false and portasabertas and carregando == false and Vdist(x,y,z,vx,vy,vz) <= 7 then
                    if DoesEntityExist(GetHashKey("prop_sacktruck_02b")) then
                        TriggerServerEvent("trydeleteobj",ObjToNet(GetHashKey("prop_sacktruck_02b")))
                    end
                    DrawText3D(vx,vy,vz, "Pressione [~g~F~w~] para fechar as portas do caminhão")
                    if IsControlJustPressed(0, 23) and distance5 <= minimo6 then
                        portasfechadas = true
                        SetVehicleDoorShut(vehicle, 2, false)
                        SetVehicleDoorShut(vehicle, 3, false)  
                        if portasfechadas then
                            voltzVerify()
                            voltzBlip()
                        end
                    end
                end
            end
        end
        Wait(1)
    end
end


function voltzBlip()
    campainha = true
    while campainha do
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local vx,vy,vz = table.unpack(GetOffsetFromEntityInWorldCoords(vehicle,0.0, -1.0, 1.0))
        for k,v in pairs(cdsdraw) do
            local ped = PlayerPedId()
            local distancev = GetDistanceBetweenCoords(GetEntityCoords(ped), cdsdraw['voltzdraw'].x, cdsdraw['voltzdraw'].y, cdsdraw['voltzdraw'].z, true)
            voltzk = 1000
            if distancev <= 30 then
                voltzk = 1
                DrawMarker(23,cdsdraw['voltzdraw'].x, cdsdraw['voltzdraw'].y, cdsdraw['voltzdraw'].z-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0,0,250,154, 180, 0, 0, 0, 0)
                DrawText3D(cdsdraw['voltzdraw'].x, cdsdraw['voltzdraw'].y, cdsdraw['voltzdraw'].z, "Pressione [~g~E~w~] para chamar os funcionários")
                    if distancev <= 7.6 then
                        if IsControlJustPressed(0, 46) then
                            vRP.playAnim(true,{{"amb@world_human_cheering@male_d" , "base"}},false) 
                            FreezeEntityPosition(ped, true)
                            SetTimeout(4000, function() 
                                FreezeEntityPosition(ped, false)
                                campainha = false
                                modelRequest("u_m_y_baygor")
                                npc = CreatePed(4, GetHashKey("u_m_y_baygor"), 717.67, -965.33, 30.4, 3374176, true, false)
                                SetEntityInvincible(npc,true)
                                SetBlockingOfNonTemporaryEvents(npc,true)
                                SetPedSeeingRange(npc,0.0)
                                SetPedHearingRange(npc,0.0)
                                SetPedFleeAttributes(npc,0,false)
                                SetPedKeepTask(npc,true)
                                SetEntityInvincible(npc,true)
                                SetPedCanRagdoll(npc,false)
                                SetPedDiesWhenInjured(npc,false)
                                SetPedCombatMovement(npc,false)
                                SetPedDesiredHeading(npc, 179)
                                TaskGoToCoordAnyMeans(npc, pegarlocal['voltzpegar'].x,pegarlocal['voltzpegar'].y,pegarlocal['voltzpegar'].z, 1.0,0,0,786603, 0xbf800000)
                                voltzPed()
                            end)
                            distancen = GetDistanceBetweenCoords(GetEntityCoords(ped),715.26, -978.5, 24.12,true)
                            if distancen <= 12 then
                                portasabertas = false
                                obj = true
                                while obj do
                                    drawTxt("Espere o ~g~FUNCIONÁRIO~w~ abrir as portas do caminhão.",8,0.5,0.92,0.35,255,255,255,255)
                                    portasabertas = false
                                    if portasabertas == false then
                                        distancev1 = GetDistanceBetweenCoords(GetEntityCoords(vehicle).x-3,GetEntityCoords(vehicle).y, GetEntityCoords(vehicle).z, GetEntityCoords(npc2), true)
                                        if distancev1 <= 8.9 then
                                            obj = false
                                            SetPedDesiredHeading(npc2, 280)
                                            vRP.CarregarAnim("missfam4")
                                            TaskPlayAnim(npc2, "missfam4", "say_hurry_up_a_trevor", 3.0, 3.0, 1500, 1, 0.0, 0.0,0.0,0.0)
                                            SetVehicleDoorOpen(vehicle, 2)
                                            SetVehicleDoorOpen(vehicle, 3)
                                            portasabertas = true
                                            voltzi = true
                                            while voltzi do
                                                local voltzl = 1000
                                                if portasabertas and voltzP == false then
                                                    TaskGoToCoordAnyMeans(npc2,npcaminhao.x,npcaminhao.y,npcaminhao.z,50.0,0,0,786603,0xbf800000)
                                                    SetEntityAsNoLongerNeeded()
                                                    voltzl = 1
                                                    local distance100 = GetDistanceBetweenCoords(GetEntityCoords(npc),717.57, -971.7, 26.56,true)
                                                    local distancep = GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(npc))
                                                    local px,py,pz = table.unpack(GetEntityCoords(npc))
                                                    DrawText3D(vx,vy,vz, "Pressione [~g~E~w~] para retirar a caixa")
                                                    drawTxt("Entregue as caixas do caminhão para o ~g~FUNCIONÁRIO",8,0.5,0.92,0.35,255,255,255,255)
                                                    if GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(vehicle),true) <= 5 and portasabertas then
                                                        FreezeEntityPosition(vehicle, true)
                                                        if IsControlJustPressed(0,46) and quantidade == 1 and DoesEntityExist(object1) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object1))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object1, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 2 and DoesEntityExist(object2) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object2))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object2, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 3 and DoesEntityExist(object3) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object3))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object3, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 4 and DoesEntityExist(object4) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object4))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object4, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 5 and DoesEntityExist(object5) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object5))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object5, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 6 and DoesEntityExist(object2) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object6))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object6, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 7 and DoesEntityExist(object7) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object7))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object7, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 8 and DoesEntityExist(object8) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object8))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object8, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 9 and DoesEntityExist(object9) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object9))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object9, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        elseif IsControlJustPressed(0,46) and quantidade == 10 and DoesEntityExist(object10) and carregando == false then
                                                            TriggerServerEvent("trydeleteobj",ObjToNet(object10))
                                                            vRP.CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)      
                                                            DetachEntity(object10, false, false)
                                                            quantidade = quantidade - 1
                                                            carregando = true
                                                        end
                                                    end
                                                    if distancep <= 2 and carregando == true and etapa == 0 then
                                                        DrawText3D(px,py,pz, "Pressione [~g~E~w~] para entregar as caixas para mim.")
                                                        if IsControlJustPressed(0, 46) and quantidade == 9 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 8 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 7 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 6 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 5 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 4 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 3 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 2 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 1 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                        elseif IsControlJustPressed(0, 46) and quantidade == 0 then
                                                            carregando = false
                                                            voltzAnim(npc,"anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
                                                            TaskPlayAnim(npc, "anim@heists@box_carry@", "idle", 3.0, 3.0, 10000, 1, 0.0,0.0,0.0)
                                                            vRP.DeletarObjeto()
                                                            TaskGoToCoordAnyMeans(npc,npcsaida.x,npcsaida.y,npcsaida.z,50.0,0,0,786603, 0xbf800000)
                                                            etapa = 1
                                                            SetTimeout(10000, function()
                                                                TaskPlayAnim(npc, "mp_common","givetake1_a", 3.0, 3.0, 2000, 1, 0.0,0.0,0.0)
                                                                vRP.playAnim(true,{{"mp_common","givetake1_a"}},false) 
                                                                vServer.GiveItem()
                                                                SetEntityAsNoLongerNeeded(npc)
                                                                portasfechadas = false
                                                                voltzi = false
                                                                voltzFim()
                                                            end)
                                                        end
                                                    end
                                                    if etapa == 1 and distance100 <= 1.2 then
                                                        TaskGoToCoordAnyMeans(npc, pegarlocal['voltzpegar'].x,pegarlocal['voltzpegar'].y,pegarlocal['voltzpegar'].z, 1.0,0,0,786603, 0xbf800000)
                                                        voltzDelete(npc)
                                                        etapa = 0
                                                    end
                                                end
                                                Wait(voltzl)
                                            end
                                        end
                                    end
                                Wait(1)
                            end        
                        end
                    end
                 end
            end
        end
        Wait(voltzk)
    end
end
function voltzPed()
    local x,y,z = table.unpack(GetEntityCoords(ped))
    local vx,vy,vz = GetEntityCoords(vehicle).x,GetEntityCoords(vehicle).y-1, GetEntityCoords(vehicle).z
    modelRequest("mp_m_waremech_01")
    npc2 = CreatePed(4, GetHashKey("mp_m_waremech_01"), 755.1, -975.74, 25.04, true, false)
    SetEntityInvincible(npc2,true)
    SetBlockingOfNonTemporaryEvents(npc2,true)
    SetPedSeeingRange(npc2,0.0)
    SetPedHearingRange(npc2,0.0)
    SetPedFleeAttributes(npc2,0,false)
    SetPedKeepTask(npc2,true)
    SetEntityInvincible(npc2,true)
    SetPedDiesWhenInjured(npc2,false)
    SetPedCombatMovement(npc2,false)
    SetPedDesiredHeading(npc2, 179)
    TaskGoToCoordAnyMeans(npc2,vx,vy,vz,15.0,0,0,786603, 0xbf800000)
end
function voltzVerify()
    for k,v in pairs(cds) do 
        ped = PlayerPedId()
        rota = true
        CriandoBlip2(cds[k].x,cds[k].y,cds[k].z)
        while rota do
            voltzs = 1
            distance6 = GetDistanceBetweenCoords(GetEntityCoords(ped), cds[k].x,cds[k].y,cds[k].z, true)
            distance9 = GetDistanceBetweenCoords(GetEntityCoords(ped), blip.x,blip.y,blip.z, true)               
            minimo7 = 20
            minimo8 = 60
            if IsPedInAnyVehicle(ped) then
                drawTxt("Vá até o destino marcado no ~g~GPS.",8,0.5,0.92,0.35,255,255,255,255)
            else
                drawTxt("Entre dentro do ~g~CAMINHÃO~w~ e siga as próximas instruções.",8,0.5,0.92,0.35,255,255,255,255)
                if distance6 <= minimo7 then
                    rota = false
                    RemoveBlip(blips)
                end
            end
            if distance9 <= 50 then
                DrawMarker(23, blip.x,blip.y,blip.z,0,0,0,0,0,0,15.0,15.0,15.0,0,250,154, 180, 0, 0, 0, 0)
                if distance9 <= 1.3 then
                    FreezeEntityPosition(vehicle, true)
                end
            end
            Wait(voltzs)
        end
    end
end

function voltzFim()
    fim = true
    while fim do 
        local vx,vy,vz = table.unpack(GetOffsetFromEntityInWorldCoords(vehicle,0.0, -1.0, 1.0))
        local px, py, pz = table.unpack(GetEntityCoords("u_m_y_baygor"))
        if not voltzP and portasfechadas == false  and portasabertas then
            DrawText3D(vx,vy,vz,"Pressione [~g~F~w~] para fechar as ~g~PORTAS~w~.")
            SetEntityAsNoLongerNeeded()
            if IsControlJustPressed(0,23) and GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(vehicle), true) <= 6 then
                portasfechadas = true
                SetVehicleDoorShut(vehicle, 2)
                SetVehicleDoorShut(vehicle, 3)
                FreezeEntityPosition(vehicle, false)
                if portasfechadas then
                    quantidade = 0
                    etapas = 0
                    trabalhando = false
                    campainha = false
                    obj = false
                    voltzi = false
                    npc = false
                    fim = false
                    rota = false
                    carregando = false
                    portasfechadas = false
                    portasabertas = false
                    voltzR = false
                    RemoveBlip(blips)
                    TriggerEvent('Notify','importante','O serviço terminou!')
                    SetEntityAsNoLongerNeeded(npc)
                    SetEntityAsNoLongerNeeded(npc2)
                    Fade(1000)
                end
            end
        end
        Wait(1)
    end
end

function VoltzObject()
    for k,v in pairs(locscax) do
        RequestModel(model)
        while not HasModelLoaded(model) do
            Citizen.Wait(1)
        end
        model = CreateObject(GetHashKey("prop_sacktruck_02b"),locscax[k].x,locscax[k].y,locscax[k].z-0.96,true,true,true)
        SetModelAsNoLongerNeeded(model)
        FreezeEntityPosition(model, true)
    end
end

function voltzAnim(npc,dict,anim,prop,flag,hand,pos1,pos2,pos3,pos4,pos5,pos6)

    RequestModel(GetHashKey(prop))
    while not HasModelLoaded(GetHashKey(prop)) do
        Citizen.Wait(10)
    end

    if pos1 then
        local coords = GetOffsetFromEntityInWorldCoords(npc,0.0,0.0,-5.0)
        object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
        SetEntityCollision(object,false,false)
        AttachEntityToEntity(object,npc,GetPedBoneIndex(npc,hand),pos1,pos2,pos3,pos4,pos5,pos6,true,true,false,true,1,true)
    else
        vRP.CarregarAnim(dict)
        TaskPlayAnim(npc,dict,anim,3-.0,3.0,-1,flag,0,0,0,0)
        local coords = GetOffsetFromEntityInWorldCoords(npc,0.0,0.0,-5.0)
        object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
        SetEntityCollision(object,false,false)
        AttachEntityToEntity(object,npc,GetPedBoneIndex(npc,hand),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
    end
    Citizen.InvokeNative(0xAD738C3085FE7E11,object,true,true)
end

function voltzStop(npc, upper)
    anims = {}
    if upper then
        ClearPedSecondaryTask(npc)
    else
        ClearPedTasks(npc)
    end
end

function voltzDelete(npc)
    voltzStop(npc, true)
    TriggerEvent("binoculos")
    if DoesEntityExist(object) then
        TriggerServerEvent("trydeleteobj",ObjToNet(object))
        object = nil
    end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT DESENVOLVIDO POR voltz#1762

--ENTRE EM MINHA LOJA! DISCORD: https://discord.gg/qarQmFYFnz

--NÃO MUDE O NOME DO SCRIPT, SENÃO IRÁ PARAR DE FUNCIONAR!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function modelRequest(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(GetHashKey(model)) do
        Citizen.Wait(10)
    end
end

function Object(model)
    repeat
        RequestModel(GetHashKey(model))
        Wait(1)
    until HasModelLoaded(GetHashKey(model))
end

function Fade(time)
    DoScreenFadeOut(1000)
    Wait(time)
    DoScreenFadeIn(1000)
end
function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.4, 0.4)
    SetTextFont(5)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 154)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.005+ factor, 0.03, 41, 11, 41, 68)
end

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function createBlip(x,y,z,sprite,color,scale,text)
	blip = AddBlipForCoord(x,y,z)
	SetBlipSprite(blip,sprite)
	SetBlipColour(blip,color)
	SetBlipScale(blip,scale)
	SetBlipAsShortRange(blip,false)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end

function setBlipCoords(x,y,z)
    SetBlipCoords(blip,x,y,z)
	SetBlipRoute(blip,false)
	SetBlipRoute(blip,true)
end

function setBlipText(text)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end

function CriandoBlip(x,y,z)
	blips = AddBlipForCoord(x,y,z)
	SetBlipSprite(blips,1)
	SetBlipColour(blips,24)
	SetBlipScale(blips,0.4)
	SetBlipAsShortRange(blips,false)
    SetBlipRoute(blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Preparar para a entregas")
	EndTextCommandSetBlipName(blips)
end

function CriandoBlip2(x,y,z)
	blips = AddBlipForCoord(x,y,z)
	SetBlipSprite(blips,1)
	SetBlipColour(blips,2)
	SetBlipScale(blips,0.4)
	SetBlipAsShortRange(blips,false)
    SetBlipRoute(blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Destino")
	EndTextCommandSetBlipName(blips)
end





