local cMain = lib.class('client')

function cMain:constructor()
    self.toggle = false

    self:EventHandlers()
    self:NuiCallbacks()
    self:Commands()
    self:Threads()
end

function cMain:EventHandlers()

end

function cMain:NuiCallbacks()
    RegisterNUICallback('hideFrame', function(_, cb)
        self:Toggle(false)
        cb({})
    end)
end

function cMain:Commands()
    RegisterCommand('show-nui', function()
        self:Toggle(true)
    end)
end

function cMain:Threads()

end

function cMain:Toggle(status)
    self.toggle = status

    SendNUIMessage({
        action = 'setVisible',
        data = status
    })

    SetNuiFocus(status, status)
end

client = cMain:new()