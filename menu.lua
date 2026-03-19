-- Red Night Menu 🔥
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- إنشاء GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 200)
Frame.Position = UDim2.new(0.1, 0, 0.3, 0)

-- زر Invisible
local ButtonInvisible = Instance.new("TextButton")
ButtonInvisible.Parent = Frame
ButtonInvisible.Size = UDim2.new(1, 0, 0.25, 0)
ButtonInvisible.Text = "Invisible 👻"
local invisible = false
ButtonInvisible.MouseButton1Click:Connect(function()
    invisible = not invisible
    for _, v in pairs(char:GetDescendants()) do
        if v:IsA("BasePart") then
            v.LocalTransparencyModifier = invisible and 1 or 0
        end
    end
end)

-- زر Speed
local ButtonSpeed = Instance.new("TextButton")
ButtonSpeed.Parent = Frame
ButtonSpeed.Position = UDim2.new(0,0,0.25,0)
ButtonSpeed.Size = UDim2.new(1,0,0.25,0)
ButtonSpeed.Text = "Speed ⚡"
local speedActive = false
ButtonSpeed.MouseButton1Click:Connect(function()
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not humanoid then return
