-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel_2 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BackgroundTransparency = 0.250
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.18466258, 0, 0.467811137, 0)
Frame.Size = UDim2.new(0, 395, 0, 254)

TopBar.Name = "TopBar"
TopBar.Parent = Frame
TopBar.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.Size = UDim2.new(0, 395, 0, 32)

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 395, 0, 32)
TextLabel.Font = Enum.Font.Sarpanch
TextLabel.Text = "PlagueKIT - v0.2"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(36, 36, 36)
ScrollingFrame.Position = UDim2.new(0, 0, 0.125984251, 0)
ScrollingFrame.Size = UDim2.new(0, 395, 0, 194)

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
TextLabel_2.Size = UDim2.new(0, 383, 0, 194)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextBox.BackgroundTransparency = 0.600
TextBox.BorderColor3 = Color3.fromRGB(36, 36, 36)
TextBox.Position = UDim2.new(0, 0, 0.90157479, 0)
TextBox.Size = UDim2.new(0, 347, 0, 25)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextButton.BackgroundTransparency = 0.600
TextButton.BorderColor3 = Color3.fromRGB(36, 36, 36)
TextButton.Position = UDim2.new(0.878480971, 0, 0.90157479, 0)
TextButton.Size = UDim2.new(0, 36, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ">"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextButton_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
TextButton_2.Position = UDim2.new(0, 0, 0.0236220472, 0)
TextButton_2.Size = UDim2.new(0, 45, 0, 20)
TextButton_2.Font = Enum.Font.Sarpanch
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 30.000

-- Scripts:

local function WCUR_fake_script() -- TextLabel_2.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	local textLabel = script.Parent
	
	helptext = "/day or /night - set timezone\n/sit or /unsit - sit down on the ground\n/godmode - enable godmode (beta)\n/esp - enable esp (beta)\n/noclip - enable noclip\n/uclip - disable noclip\n/anonymous - spam anonymous masks\n/forceshield - Appearance only\n/illuminati - spams illuminati signs (similar to anonymous)"
	
	textLabel.Text = helptext
end
coroutine.wrap(WCUR_fake_script)()
local function AIVRXBG_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local TextBox = script.Parent.Parent.TextBox
	
	
	local runservice = game:GetService("RunService")
	local noclip = false
	local Player = game.Players.LocalPlayer
	local UIS = game:GetService("UserInputService")
	
	script.Parent.MouseButton1Click:Connect(function()
		local text = tostring(TextBox.Text)
		if text == "/esp" then
			start_esp()
			print("-ESP Enabled");
		end
		if text == "/noclip" then
			noclip = true
			print("-NoClip Enabled");
		end
		if text == "/uclip" then
			noclip = false
			print("-NoClip Disabled");
		end
		if text == "/forceshield" then
			Instance.new("ForceField", game.Players.LocalPlayer.Character)
			print("-ForceField Enabled");
		end
		if text == "/sit" then
			game.Players.LocalPlayer.Character.Humanoid.Sit = true
			print("-Sit Enabled");
		end
		if text == "/unsit" then
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
			print("-Sit Disabled");
		end
		if text == "/day" then
			game.Lighting.TimeOfDay = "9:00:00"
			print("-Day Enabled - 9AM");
		end
		if text == "/night" then
			game.Lighting.TimeOfDay = "23:00:00"
			print("-Night Enabled - 11PM");
		end
		if text == "/godmode" then
			if Player.Character then
				if Player.Character:FindFirstChild("Humanoid") then
					Player.Character.Humanoid.Name = "1"
				end
				local l = Player.Character["1"]:Clone()
				l.Parent = Player.Character
				l.Name = "Humanoid"; wait(0.1)
				Player.Character["1"]:Destroy()
				workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
				Player.Character.Animate.Disabled = true; wait(0.1)
				Player.Character.Animate.Disabled = false
			end
			print("-Godmode Enabled")
		end
	end)
	
	
	--SCRIPTS:
	runservice.Stepped:Connect(function()
		if noclip then
			Player.Character.Humanoid:ChangeState(11)
		end
	end)
	
	UIS.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.KeyCode == Enum.KeyCode.K and noclip == true then
			noclip = false
			print("-NoClip Disabled");
		elseif input.KeyCode == Enum.KeyCode.K and noclip == false then
			noclip = true
			print("-NoClip Enabled");
		end
	end)
	
	function start_esp()
		_G.Configuration = {
			Tracers = true,
			PlayerInfo = true,
			Outlines = true,
			ShowAllyTeam = true,
			UseTeamColor = true
		}
	
		local Camera = game:GetService("Workspace").CurrentCamera
		local RunService = game:GetService("RunService")
	
		local Players = game:GetService("Players")
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local DrawedPlayers = {}
	
		local Vector2 = Vector2.new
		local RGB = Color3.fromRGB
	
		local function CreateDrawing(object, properties)
			local Object = Drawing.new(object)
	
			for i, v in pairs(properties) do
				Object[i] = v
			end
	
			return Object
		end
	
		local function AddVisuals(player)
			if DrawedPlayers[player.Name] then return end
	
			DrawedPlayers[player.Name] = {
				Player = player,
				Info = CreateDrawing("Text", {Text = "", Center = true, Outline = true, Size = 16, Transparency = 1, Position = Vector2(0, 0), Color = RGB(255, 255, 255), Visible = false}),
				TracerOutline = CreateDrawing("Line", {Transparency = 1, Thickness = 1.5, From = Vector2(0, 0), To = Vector2(0, 0), Color = RGB(0, 0, 0), Visible = false}),
				Tracer = CreateDrawing("Line", {Transparency = 1, Thickness = 1.5, From = Vector2(0, 0), To = Vector2(0, 0), Color = RGB(255, 255, 255), Visible = false}),
			}
		end
	
		local function IsOnTeam(player)
			if LocalPlayer.TeamColor.Color == player.TeamColor.Color then
				return true
			else
				return false
			end
		end
	
		local function SetVisuals(table, type, value)
			if type == "Color" then
				table.Tracer.Color = value
			elseif type == "Visibility" then
				for i, v in pairs(table) do
					if tostring(i) ~= "Player" then
						v.Visible = value
					end
				end
			end
		end
	
		for i, v in pairs(Players:GetPlayers()) do
			if v ~= LocalPlayer then
				AddVisuals(v)
			end
		end
	
		Players.PlayerAdded:Connect(function(player)
			AddVisuals(player)
		end)
	
		Players.PlayerRemoving:Connect(function(player)
			for i, v in pairs(DrawedPlayers[player.Name]) do
				wait()
				v:Remove()
			end
	
			wait()
			DrawedPlayers[player.Name] = nil
		end)
	
		RunService:BindToRenderStep("Universal", 500, function()
			for i, v in pairs(Players:GetPlayers()) do
				if v ~= LocalPlayer then
					local Player = v
					local DrawedPlayer = DrawedPlayers[Player.Name]
	
					if DrawedPlayer then
						local Drawings = {
							Info = DrawedPlayer.Info,
							Tracer = DrawedPlayer.Tracer,
							TracerOutline = DrawedPlayer.TracerOutline,
						}
	
						if Player then
							local LocalCharacter = LocalPlayer.Character
							local Character = Player.Character
	
							if LocalCharacter and Character then
								local LocalPlayerHumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
								local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
	
								if LocalPlayerHumanoidRootPart and HumanoidRootPart then
									local HumanoidRootPartPosition, PlayerOnScreen = Camera:WorldToViewportPoint(HumanoidRootPart.Position)
	
									Drawings.Info.Text = Player.Name
									Drawings.Info.Position = Vector2(HumanoidRootPartPosition.X, (HumanoidRootPartPosition.Y - (6000 / HumanoidRootPartPosition.Z) / 2) - 20)
									Drawings.Info.Outline = _G.Configuration.Outlines
	
									Drawings.Tracer.From = Vector2(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
									Drawings.Tracer.To = Vector2(HumanoidRootPartPosition.X, HumanoidRootPartPosition.Y)
	
									Drawings.TracerOutline.Thickness = (Drawings.Tracer.Thickness * 2)
									Drawings.TracerOutline.From = Drawings.Tracer.From
									Drawings.TracerOutline.To = Drawings.Tracer.To
	
	
									if _G.Configuration.UseTeamColor then
										SetVisuals(Drawings, "Color", Player.TeamColor.Color)
									else
										SetVisuals(Drawings, "Color", RGB(255, 255, 255))
									end
	
									Drawings.Info.Visible = _G.Configuration.PlayerInfo
									Drawings.Tracer.Visible = _G.Configuration.Tracers
									Drawings.TracerOutline.Visible = _G.Configuration.Outlines
	
									if _G.Configuration.ShowAllyTeam then
										SetVisuals(Drawings, "Visibility", true)
									else
										if IsOnTeam(Player) then
											SetVisuals(Drawings, "Visibility", false)
										else
											SetVisuals(Drawings, "Visibility", true)
										end
									end
	
									if not PlayerOnScreen then
										SetVisuals(Drawings, "Visibility", false)
									end
								else
									SetVisuals(Drawings, "Visibility", false)
								end
							else
								SetVisuals(Drawings, "Visibility", false)
							end
						else
							SetVisuals(Drawings, "Visibility", false)
						end
					end
				end
			end
		end)
	end
end
coroutine.wrap(AIVRXBG_fake_script)()
local function NVGZJFJ_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	Menu = script.Parent.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		Menu:remove()
	
	end)
end
coroutine.wrap(NVGZJFJ_fake_script)()
local function RARVE_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	frame = script.Parent.Frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(RARVE_fake_script)()


local meta, old = getrawmetatable(game), {};
for i, v in next, meta do old[i] = v end;

local char = 'ٓأۘۘsأ';

setreadonly(meta, false);

meta.__namecall = newcclosure(function(...)
local method = getnamecallmethod();
local args = {...};
local replacetext = {
    "discord", ".com", ".co.uk",".fr",".gg",
    "Spear Chucker", "Gas the jews", "Kill","BDLM","BLDM",
    "tranny", "Trannie", "Jiggerboo",
    "jew", "fag", "holocaust",
    "twat", "black", "coon",
    "fucking", "nigger", "faggot",
    "thot", "bitch", "cunt", "fuck",
    "fucker", "whore", "dick", "penis", "asshole",
    "allahu", "akbar", "crap",
    "shit", "motherfucker",
    "girlfriend", "boyfriend",
    "slave", "sex", "pussy",
    "nigga", "slut", "rape"
}
local replacedtext = ""

local mt = getrawmetatable(game)
local oldmt = mt.index


make_writeable(mt)

mt.index = function(t,i)
   if i == "Kick" then
       return nil
   end
   return oldmt(t,i)
end

if method == 'FireServer' and args[1].Name == 'SayMessageRequest' then
  for count = 1, #replacetext do
    if string.find(args[2], replacetext[count]) then
      replacedtext = string.gsub(replacetext[count], '.', function(c)
      return c .. char;
      end);
      args[2] = string.gsub(args[2], replacetext[count], replacedtext);
    end;
    end;
	return old.__namecall(unpack(args));
    end;
 
    return old.__namecall(...);
    end);
    setreadonly(meta, true);

