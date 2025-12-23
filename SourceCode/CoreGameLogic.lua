--[[
    LegaSea: Core System Initialization
    This script handles player entry and initializes basic game statistics.
]]

game.Players.PlayerAdded:Connect(function(player)
    -- Create leaderstats folder (The standard way to show scores in Roblox)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    -- Example Stat: Exploration Points
    local points = Instance.new("IntValue")
    points.Name = "Points"
    points.Value = 0
    points.Parent = leaderstats
    
    print("Player " .. player.Name .. " has joined the LegaSea environment.")
end)
