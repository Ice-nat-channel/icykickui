wait(3)

local plr = game:GetService("Players").LocalPlayer
local plrGui = plr.PlayerGui

local ui = Instance.new("ScreenGui",plrGui)
ui.Name = "KickUI"
ui.IgnoreGuiInset = true
ui.ResetOnSpawn = false

local mF = Instance.new("Frame",ui)
mF.Name = "MainFrame"
mF.Size = UDim2.fromScale(0,0)
mF.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
mF.Position = UDim2.fromScale(0.5,0.5)
mF.AnchorPoint = Vector2.new(0.5,0.5)
mF.ClipsDescendants = false

local fade = Instance.new("Frame",mF)
fade.Name = "Fade"
fade.Size = UDim2.fromScale(1,1)
fade.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
fade.Position = UDim2.fromScale(.5,.5)
fade.AnchorPoint = Vector2.new(.5,.5)
fade.ZIndex = 99

local title = Instance.new("TextLabel",mF)
title.Name = "Title"
title.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
title.Size = UDim2.fromScale(1,0.198)
title.Text = "KickUI"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Font = Enum.Font.MontserratBold

local plrName = Instance.new("TextBox",mF)
plrName.Name = "PlayerName"
plrName.BackgroundColor3 = Color3.fromRGB(75,75,75)
plrName.ClearTextOnFocus = false
plrName.Position = UDim2.fromScale(0.15,0.24)
plrName.Size = UDim2.fromScale(0.672,0.161)
plrName.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
plrName.TextScaled = true
plrName.TextColor3 = Color3.new(1,1,1)
plrName.Text = ""
plrName.PlaceholderText = "Player Name"

local reason = Instance.new("TextBox",mF)
reason.Name = "Reason"
reason.BackgroundColor3 = Color3.fromRGB(75,75,75)
reason.ClearTextOnFocus = false
reason.Position = UDim2.fromScale(0.15,0.479)
reason.Size = UDim2.fromScale(0.672,0.161)
reason.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
reason.TextScaled = true
reason.TextColor3 = Color3.new(1,1,1)
reason.Text = ""
reason.PlaceholderText = "Reason"

local kickBt = Instance.new("TextButton",mF)
kickBt.Name = "KickBT"
kickBt.BackgroundColor3 = Color3.new(1, 0, 0)
kickBt.Position = UDim2.fromScale(0.334,0.746)
kickBt.Size = UDim2.fromScale(0.3,0.188)
kickBt.TextScaled = true
kickBt.Text = "KICK"
kickBt.TextColor3 = Color3.new(1,1,1)
kickBt.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

Instance.new("UIDragDetector",mF)
Instance.new("UICorner",mF)
Instance.new("UICorner",fade)
Instance.new("UICorner",title)

local titleStroke = Instance.new("UIStroke",title)
titleStroke.Color = Color3.fromRGB(112,112,112)
titleStroke.Thickness = 2.1

local plrNameStroke = Instance.new("UIStroke",plrName)
plrNameStroke.Color = Color3.fromRGB(127, 127, 127)
plrNameStroke.Thickness = 3.3
plrNameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local reasonStroke = Instance.new("UIStroke",reason)
reasonStroke.Color = Color3.fromRGB(127, 127, 127)
reasonStroke.Thickness = 3.3
reasonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

mF:TweenSize(UDim2.fromOffset(300, 180),Enum.EasingDirection.Out,Enum.EasingStyle.Back,1.5)
task.wait(1.5)
game:GetService("TweenService"):Create(fade, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 1}):Play()
task.wait(1)
fade:Destroy()

kickBt.MouseButton1Click:Connect(function()
	require(84433825061404)(plrName.Text,reason.Text)
end)
