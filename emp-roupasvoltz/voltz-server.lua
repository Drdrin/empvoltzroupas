local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()
local blips = {}
vServer = {}
Tunnel.bindInterface("emp-roupasvoltz",vServer)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT DESENVOLVIDO POR voltz#1762

--ENTRE EM MINHA LOJA! DISCORD: https://discord.gg/qarQmFYFnz

--NÃO MUDE O NOME DO SCRIPT, SENÃO IRÁ PARAR DE FUNCIONAR!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vServer.GiveItem()
    local source = source
    local user_id = vRP.getUserId(source)

    local item = "tecidos"
    local item2 = "agulha"
    local item3 = "botoes"

    local qtd = "20"

    vRP.giveInventoryItem(user_id, item, qtd)
    vRP.giveInventoryItem(user_id, item2, qtd)
    vRP.giveInventoryItem(user_id, item3, qtd)

    TriggerClientEvent('Notify',source,'sucesso', 'Você recebeu o que continha na caixa.')
    TriggerClientEvent("itensNotify",source,"usar","Pegou",""..item.."")
    TriggerClientEvent("itensNotify",source,"usar","Pegou",""..item2.."")
    TriggerClientEvent("itensNotify",source,"usar","Pegou",""..item3.."")
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SCRIPT DESENVOLVIDO POR voltz#1762

--ENTRE EM MINHA LOJA! DISCORD: https://discord.gg/qarQmFYFnz

--NÃO MUDE O NOME DO SCRIPT, SENÃO IRÁ PARAR DE FUNCIONAR!
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

