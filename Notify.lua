local Debug = false

---@param type string the notification type
---@param length number the length of the notification
---@param message any the message :D
local function Notify(message, notificatonType, length)
    if Debug then
        print(('1 %s'):format(tostring(notificatonType)))
        print(('2 %s'):format(tostring(length)))
        print(('3 %s'):format(message))
    end

    if type(notificatonType) ~= "string" then
        notificatonType = "info"
    end

    if type(length) ~= "number" then
        length = 3000
    end

    if Debug then
        print(('4 %s'):format(tostring(notificatonType)))
        print(('5 %s'):format(tostring(length)))
        print(('6 %s'):format(message))
    end

    SendNuiMessage(json.encode({
        type = notificatonType or "info",
        length = length or 3000,
        message = message or "ESX-Notify"
    }))
end

RegisterNetEvent('DoLongHudText', function(notificatonType, length, message)


    Notify(notificatonType, length, message)



end)

exports('Notify', Notify)
RegisterNetEvent("RS:Notify", Notify)


RegisterCommand("oldnotify", function()
    TriggerEvent('DoLongHudText', 'No Waypoint Set.', true, false, 140)
end)

RegisterCommand("notify", function()
    TriggerEvent('DoLongHudText', "You Recived ~br~ 1x ball~s~!", "success", 3000)
end)

RegisterCommand("notify1", function()
    TriggerEvent('DoLongHudText', "Well ~g~Done~s~!", "success", 3000)
end)

RegisterCommand("notify2", function()
    TriggerEvent('DoLongHudText', "Information Recived", "info", 3000)
end)

RegisterCommand("notify3", function()
    TriggerEvent('DoLongHudText', "You Did something ~r~WRONG~s~!", "error", 3000)
end)

