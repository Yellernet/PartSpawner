local tool = Instance.new("Tool")
tool.Name = "PartSpawner 3.0"
tool.Parent = game.Players.LocalPlayer.Backpack
local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Parent = tool
handle.Size = Vector3.new(1, 1, 1)

game.Players.LocalPlayer.Character:WaitForChild("PartSpawner 3.0").Activated:Connect(function()
	local folder = Instance.new("Folder", game.ReplicatedStorage)
	folder.Name = "Part"
	local part = Instance.new("Part", folder)
	part.Name = "Part"
	part.Size = Vector3.new(4,4,4)
	part.Massless = true
	local x = game.Players.LocalPlayer.Character:WaitForChild("Head").Position.X 
	local y = game.Players.LocalPlayer.Character:WaitForChild("Head").Position.Y - 10
	local z = game.Players.LocalPlayer.Character:WaitForChild("Head").Position.Z
	local clone = part:Clone()
	clone.Name = "Part"
	clone.Parent = game.Workspace
	clone.Position = Vector3.new(x,y,z)
	wait(2.5)
	clone:Destroy()
end)
