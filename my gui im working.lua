-- Gui to Lua
-- Version: 3.2

-- Instances:

local NutGUi = Instance.new("ScreenGui")
local Mapbutton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Main = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Chara = Instance.new("ImageButton")
local PlayerName = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Xbutton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

--Properties:

NutGUi.Name = "NutGUi"
NutGUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NutGUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Mapbutton.Name = "Mapbutton"
Mapbutton.Parent = NutGUi
Mapbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mapbutton.Position = UDim2.new(-0.0323076919, 0, 0.348903239, 0)
Mapbutton.Size = UDim2.new(0, 163, 0, 50)
Mapbutton.Font = Enum.Font.SourceSans
Mapbutton.Text = "Open Gui"
Mapbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
Mapbutton.TextSize = 37.000

UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = Mapbutton

Main.Name = "Main"
Main.Parent = NutGUi
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.364467204, 0, 0.356065214, 0)
Main.Size = UDim2.new(0, 229, 0, 175)
Main.Style = Enum.FrameStyle.RobloxSquare

UICorner_2.CornerRadius = UDim.new(0, 9)
UICorner_2.Parent = Main

Chara.Name = "Chara"
Chara.Parent = Main
Chara.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Chara.Position = UDim2.new(-0.00496524572, 0, 0.00639841147, 0)
Chara.Size = UDim2.new(0, 215, 0, 156)
Chara.Image = "http://www.roblox.com/asset/?id=1250313377"

PlayerName.Name = "PlayerName"
PlayerName.Parent = Chara
PlayerName.BackgroundColor3 = Color3.fromRGB(46, 153, 225)
PlayerName.BorderColor3 = Color3.fromRGB(46, 153, 225)
PlayerName.Position = UDim2.new(0.024682058, 0, 0.110818394, 0)
PlayerName.Size = UDim2.new(0, 203, 0, 48)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.Text = "Welcome PlayerName"
PlayerName.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayerName.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 9)
UICorner_3.Parent = PlayerName

UICorner_4.Parent = Chara

Execute.Name = "Execute"
Execute.Parent = Chara
Execute.BackgroundColor3 = Color3.fromRGB(46, 153, 225)
Execute.BorderColor3 = Color3.fromRGB(46, 153, 225)
Execute.Position = UDim2.new(0.176744193, 0, 0.878205121, 0)
Execute.Size = UDim2.new(0, 142, 0, 19)
Execute.Font = Enum.Font.SourceSans
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextSize = 14.000

UICorner_5.Parent = Execute

Xbutton.Name = "Xbutton"
Xbutton.Parent = Main
Xbutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Xbutton.Position = UDim2.new(0.89215982, 0, 0.0059833643, 0)
Xbutton.Size = UDim2.new(0, 23, 0, 25)
Xbutton.Font = Enum.Font.Nunito
Xbutton.Text = "X"
Xbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
Xbutton.TextScaled = true
Xbutton.TextSize = 18.000
Xbutton.TextWrapped = true

UICorner_6.Parent = Xbutton

-- Scripts:

local function HMVFHJL_fake_script() -- NutGUi.MapUiHandler 
	local script = Instance.new('Script', NutGUi)

	local Gui = script.Parent 
	local MainUi = Gui.Main
	local Map = Gui.Mapbutton
	
	Map.MouseButton1Click:Connect(function()
		MainUi.Visible = true 
	end)
	
	
	
	
end
coroutine.wrap(HMVFHJL_fake_script)()
local function RYZWB_fake_script() -- NutGUi.INSTRUCTIONS 
	local script = Instance.new('Script', NutGUi)

	-- Instructions 
	-- put This in StarterGui 
	-- to change the picture go to main gui and press map then go to its image property and change the link or asset id
	-- Try to play around with it hope this helps 
	
	-- Created by Monarchry_Playz 
	
end
coroutine.wrap(RYZWB_fake_script)()
local function OEHEHOR_fake_script() -- Main.PossibleToGrab 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end
coroutine.wrap(OEHEHOR_fake_script)()
local function WMUKPTU_fake_script() -- PlayerName.TextPlayerName 
	local script = Instance.new('LocalScript', PlayerName)

	script.Parent.Text = "Welcome ".. game.Players.LocalPlayer.DisplayName
end
coroutine.wrap(WMUKPTU_fake_script)()
local function DOCUPE_fake_script() -- PlayerName.GetPlayerName 
	local script = Instance.new('LocalScript', PlayerName)

	wait(0.5) MyName = game.Players.LocalPlayer.Name
	print(MyName)
end
coroutine.wrap(DOCUPE_fake_script)()
local function GCYMBPV_fake_script() -- Chara.LocalScript 
	local script = Instance.new('LocalScript', Chara)

	local Sound = script.Parent.Parent.Sound
	
	script.Parent.MouseButton1Click:Connect(function()
		Sound:Play()
	end)
	
end
coroutine.wrap(GCYMBPV_fake_script)()
local function SKXSBS_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local cmdx = loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	
	script.Parent.MouseButton1Click:Connect(function()
		cmdx
		print("Cmd-x executing")
	end)
	
end
coroutine.wrap(SKXSBS_fake_script)()
local function KSFVC_fake_script() -- Xbutton.Script 
	local script = Instance.new('Script', Xbutton)

	local xButton = script.Parent
	local MainUi = script.Parent.Parent
	
	
	xButton.MouseButton1Click:Connect(function()
		MainUi.Visible = false 
	end)
	
end
coroutine.wrap(KSFVC_fake_script)()
