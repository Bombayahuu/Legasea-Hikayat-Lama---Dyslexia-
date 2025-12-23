-- LegaSea: Environmental Interaction Logic
local TweenService = game:GetService("TweenService")

-- Function to handle secure interaction between player and game environment
local function onDiscoveryTriggered(player, objectName)
    print(player.Name .. " discovered " .. objectName)
    
    -- Example of data validation before rewarding player
    if player and player:FindFirstChild("leaderstats") then
        local discoveryPoints = player.leaderstats:FindFirstChild("DiscoveryPoints")
        if discoveryPoints then
            discoveryPoints.Value = discoveryPoints.Value + 10
        end
    end
end

-- Security check: Ensure triggers are only handled on the server
game.ReplicatedStorage.RemoteEvents.DiscoveryEvent.OnServerEvent:Connect(onDiscoveryTriggered)
