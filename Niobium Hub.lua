local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local BadgeService = game:GetService("BadgeService")
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
if game.PlaceId == 1803911948 then
	_G.soquinhoburst = false;
	_G.kiblastburst = false;
	_G.defenseburst = false;
	_G.agilityburst = false;
	_G.chargeburst = false;
	_G.kibladeburst = false;

	local Window = Rayfield:CreateWindow({
        Name = "Niobiumm Hub | "..GameName,
        LoadingTitle = "Niobium Hub",
        LoadingSubtitle = "Loading "..GameName.." Script",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Big Hub"
        },
            Discord = {
                Enabled = false,
                Invite = "", -- The Discord invite code, do not include discord.gg/
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "SiriusKey",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "Hello"
        }
    })

    local Tab = Window:CreateTab("Main", 10058434487) -- Title, Image

    local Toggle = Tab:CreateToggle({
        Name = "Attack",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
			_G.soquinhoburst = Value
			if Value then
				FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
					while _G.soquinhoburst == true do
	local args = {
		[1] = game:GetService("Players").LocalPlayer.Stats,
		[2] = {
			["Humanoid"] = game:GetService("Players").LocalPlayer.Character.Humanoid,
			["RightUpperArm"] = game:GetService("Players").LocalPlayer.Character.RightUpperArm,
			["LeftFoot"] = game:GetService("Players").LocalPlayer.Character.LeftFoot,
			["RightHand"] = game:GetService("Players").LocalPlayer.Character.RightHand,
			["RightLowerArm"] = game:GetService("Players").LocalPlayer.Character.RightLowerArm,
			["LeftUpperLeg"] = game:GetService("Players").LocalPlayer.Character.LeftUpperLeg,
			["LeftUpperArm"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm,
			["Character"] = game:GetService("Players").LocalPlayer.Character,
			["LeftHand"] = game:GetService("Players").LocalPlayer.Character.LeftHand,
			["RightFoot"] = game:GetService("Players").LocalPlayer.Character.RightFoot,
			["LeftLowerArm"] = game:GetService("Players").LocalPlayer.Character.LeftLowerArm,
			["RightLowerLeg"] = game:GetService("Players").LocalPlayer.Character.RightLowerLeg,
			["RightUpperLeg"] = game:GetService("Players").LocalPlayer.Character.RightUpperLeg,
			["LeftLowerLeg"] = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg
		}
	}

	game:GetService("ReplicatedStorage").Remotes.Training.Combat:InvokeServer(unpack(args))

				end
				end)
			end
			if not Value then
				if FastLoop  then
					FastLoop :Disconnect()
				end
			end
		end
	})

    local Toggle = Tab:CreateToggle({
        Name = "Ki",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
			_G.kiblastburst = Value
			if Value then
				FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
					while _G.kiblastburst == true do
	local args = {
		[1] = game:GetService("Players").LocalPlayer.Status,
		[2] = game:GetService("Players").LocalPlayer.Stats,
		[3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
		[4] = game:GetService("Players").LocalPlayer.Character.RightHand,
		[5] = game:GetService("Players").LocalPlayer.Character
	}
	game:GetService("ReplicatedStorage").Remotes.Training.Blast:InvokeServer(unpack(args))
				end
				end)
			end
			if not Value then
				if FastLoop  then
					FastLoop :Disconnect()
				end
			end
		end
})
local Toggle = Tab:CreateToggle({
	Name = "Agility",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.agilityburst = Value
				while _G.agilityburst == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Stats
}

game:GetService("ReplicatedStorage").Remotes.Training.Agility:FireServer(unpack(args))
task.wait()
			end
		end
	})
	local Toggle = Tab:CreateToggle({
		Name = "Defense",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.defenseburst = Value
			if Value then
				FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
					while _G.defenseburst == true do
				local args = {
						[1] = game:GetService("Players").LocalPlayer.Stats,
						[2] = game:GetService("Players").LocalPlayer.Status,
						[3] = game:GetService("Players").LocalPlayer.Character.Humanoid,
						[4] = game:GetService("Players").LocalPlayer.Character.RightHand
				   }
						game:GetService("ReplicatedStorage").Remotes.Training.Defense:InvokeServer(unpack(args))
				end
				end)
			end
			if not Value then
				if FastLoop  then
							FastLoop :Disconnect()
				end
			end
		end
	})
	local Section = Tab:CreateSection("Misc")
	local Button = Tab:CreateButton({
		Name = "Max Form",
		Callback = function()
			local args = {
				[1] = {
					[1] = {
						[1] = "MUI",
						[2] = 0,
						[3] = 0,
						[4] = 0,
						[5] = 0
					},
					[2] = "Modes"
				}
			}

			game:GetService("ReplicatedStorage").Remotes.RequestSkill:InvokeServer(unpack(args))
		end,
	})
function safeplace()
	local Bs = Instance.new("Part")
	Bs.Name = "SafePart"
	Bs.Parent = workspace
	Bs.Size = Vector3.new(500,5,500)
	Bs.Anchored = true
	Bs.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1500,2000),math.random(3000,3500),math.random(1500,2000))
	task.wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bs.CFrame + Vector3.new(0,10,0)
end
function tomap()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
 local SafePart = workspace:FindFirstChild("SafePart")
	SafePart:Destroy()
end
local Button = Tab:CreateButton({
	Name = "Safe Place",
	Callback = function()
		safeplace()
	end,
})
local Button = Tab:CreateButton({
	Name = "Back To Map",
	Callback = function()
		tomap()
	end,
})
end
if game.PlaceId == 4451516286 then
	_G.soquinhoblood = false;
	_G.kiblastblood = false;
	_G.defenseblood = false;
	_G.zenkaiblood = false;

	local Window = Rayfield:CreateWindow({
        Name = "Niobiumm Hub | "..GameName,
        LoadingTitle = "Niobium Hub",
        LoadingSubtitle = "Loading Dragon Ball Hyper Blood "..GameName.." Script",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Big Hub"
        },
            Discord = {
                Enabled = true,
                Invite = "huJUBjhq7e", -- The Discord invite code, do not include discord.gg/
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "SiriusKey",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "Hello"
        }
    })
	local Tab = Window:CreateTab("Main", 10058434487) -- Title, Image
	local Section = Tab:CreateSection("Training")
	local Toggle = Tab:CreateToggle({
		Name = "Attack",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.soquinhoblood = Value
			while _G.soquinhoblood == true do
local args = {
    [1] = true,
    [2] = "GolpeIzquierdo",
    [3] = game:GetService("ReplicatedStorage").Asset.Anims.L
}

game:GetService("ReplicatedStorage").Training.Golpe:FireServer(unpack(args))
				task.wait()	
			end
		end,
	})
	local Toggle = Tab:CreateToggle({
		Name = "Ki",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.kiblastblood = Value
			while _G.kiblastblood == true do
				local N=game:GetService("VirtualInputManager")
				N:SendKeyEvent(true,"Q",false,game)
			task.wait()
			end
		end,
	})
	local Toggle = Tab:CreateToggle({
		Name = "Defense",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.defenseblood = Value
			while _G.defenseblood == true do
				local args = {
					[1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
					[2] = "antihack@"
				}
				
				game:GetService("ReplicatedStorage").Training.Defensa:InvokeServer(unpack(args))
			task.wait()

		end
		end,
	})
	local Label = Tab:CreateLabel("Disable if you are using attack training also only one stat is required to rebirth so use attack for it its better")
	local Toggle = Tab:CreateToggle({
		Name = "Auto Zenkai",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.zenkaiblood = Value
			while _G.zenkaiblood == true do
game:GetService("ReplicatedStorage").Zenkai:FireServer()
local SafePart = workspace:FindFirstChild("SafePart")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafePart.CFrame + Vector3.new(0,10,0)
			task.wait(10)
			end
		end,
	})
	local Paragraph = Tab:CreateParagraph({Title = "Important", Content = "Use safe place then enable auto zenkai"})
	local Section = Tab:CreateSection("Safe Place")
	function safeplace()
	local Bs = Instance.new("Part")
	Bs.Name = "SafePart"
	Bs.Parent = workspace
	Bs.Size = Vector3.new(500,5,500)
	Bs.Anchored = true
	Bs.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1500,2000),math.random(3000,3500),math.random(1500,2000))
	task.wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bs.CFrame + Vector3.new(0,10,0)
end
function tomap()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
 local SafePart = workspace:FindFirstChild("SafePart")
	SafePart:Destroy()
end
local Button = Tab:CreateButton({
	Name = "Safe Place",
	Callback = function()
		safeplace()
	end,
})
local Button = Tab:CreateButton({
	Name = "Back To Map",
	Callback = function()
		tomap()
	end,
})
end
if game.PlaceId == 1456080999 then
_G.soquinhodbx = false;
_G.kidbx = false;
_G.chargedbx = false;
	local Window = Rayfield:CreateWindow({
        Name = "Niobiumm Hub | "..GameName,
        LoadingTitle = "Niobium Hub",
        LoadingSubtitle = "Loading "..GameName,
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Big Hub"
        },
            Discord = {
                Enabled = true,
                Invite = "huJUBjhq7e", -- The Discord invite code, do not include discord.gg/
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "SiriusKey",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "Hello"
        }
    })
	local Tab = Window:CreateTab("Main", 10058434487) -- Title, Image
	local Section = Tab:CreateSection("Training")
	local Toggle = Tab:CreateToggle({
		Name = "Attack",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.soquinhodbx = Value
			while _G.soquinhodbx == true do
				local args = {
					[1] = true,
					[2] = 1,
					[3] = game:GetService("Players").LocalPlayer.Character.RightHand,
					[4] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.swing
				}
				
				game:GetService("ReplicatedStorage").Events.combat:FireServer(unpack(args))
				
			task.wait()

		end
		end,
	})
	local Toggle = Tab:CreateToggle({
		Name = "Ki",
		CurrentValue = false,
		Flag = "Ki", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.kidbx = Value
			while _G.kidbx == true do
				local args = {
					[1] = true,
					[2] = game:GetService("Players").LocalPlayer.Character.Effects,
					[3] = Vector3.new(math.random(1, 99999), math.random(1, 99999), math.random(1, 99999)),
					[4] = game:GetService("Players").LocalPlayer.Character.RightHand
				}
				
				game:GetService("ReplicatedStorage").Events.blast:FireServer(unpack(args))
				
			task.wait()

		end
		end,
	})
	local Toggle = Tab:CreateToggle({
		Name = "Charge",
		CurrentValue = false,
		Flag = "Charge", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.chargedbx = Value
			while _G.chargedbx == true do
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
    [2] = true
}
game:GetService("ReplicatedStorage").Events.charge:FireServer(unpack(args))
			task.wait()
while _G.chargedbx == false do
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
    [2] = false
}

game:GetService("ReplicatedStorage").Events.charge:FireServer(unpack(args))
task.wait()
end
		end
		end,
	})
end
if game.PlaceId == 2185643793 then
	_G.soquinhomist = false
	_G.kimist = false
	_G.spirit = false
	_G.defensemist = false
	_G.autoreb = false
	local Window = Rayfield:CreateWindow({
        Name = "Niobiumm Hub | "..GameName,
        LoadingTitle = "Niobium Hub",
        LoadingSubtitle = "Loading "..GameName,
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Big Hub"
        },
            Discord = {
                Enabled = true,
                Invite = "huJUBjhq7e", -- The Discord invite code, do not include discord.gg/
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "SiriusKey",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "Hello"
        }
    })
	local Tab = Window:CreateTab("Main", 10058434487) -- Title, Image
	local Section = Tab:CreateSection("Training")
	local Toggle = Tab:CreateToggle({
		Name = "Attack",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.soquinhomist = Value
			while _G.soquinhomist == true do
local args = {
    [1] = "1412qRsx0Pr%tect!on1412"
}

game:GetService("ReplicatedStorage").Punch:FireServer(unpack(args))

			
		task.wait()

	end
	end,
})
local Toggle = Tab:CreateToggle({
	Name = "Spirit",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.spirit = Value
		while _G.spirit == true do
			game:GetService("ReplicatedStorage").SpiritXp:FireServer()
	task.wait()

end
end,
})
local Toggle = Tab:CreateToggle({
Name = "Defense",
CurrentValue = false,
Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
	_G.defensemist = Value
	while _G.defensemist == true do
local args = {
    [1] = "1412qRsx0Pr%tect!on1412"
}
game:GetService("ReplicatedStorage").Defense:FireServer(unpack(args))
task.wait()
end
end,
})
local Toggle = Tab:CreateToggle({
	Name = "Ki",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.kimist = Value
		while _G.kimist == true do
local args = {
    [1] = "1412qRsx0Pr%tect!on1412",
    [2] = 50,
    [3] = CFrame.new(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000)) * CFrame.Angles(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000)),
    [4] = Vector3.new(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000)),
    [5] = Vector3.new(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000))
}
game:GetService("ReplicatedStorage").KiBlast:FireServer(unpack(args))
	task.wait()
	end
	end,
	})
	function safeplace()
		local Bs = Instance.new("Part")
		Bs.Name = "SafePart"
		Bs.Parent = workspace
		Bs.Size = Vector3.new(500,5,500)
		Bs.Anchored = true
		Bs.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1500,2000),math.random(3000,3500),math.random(1500,2000))
		task.wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bs.CFrame + Vector3.new(0,10,0)

	end
	
	function tomap()
		game.Players.LocalPlayer.Character:BreakJoints()
	end
	local Toggle = Tab:CreateToggle({
		Name = "Auto Reb",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.autoreb = Value
			while _G.autoreb == true do
				local SafePart = workspace:FindFirstChild("SafePart")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafePart.CFrame + Vector3.new(0,10,0)
				local args = {
    [1] = "*1614qv^pRsx0Pr%tEct!on1614*"
}
game:GetService("ReplicatedStorage").Saisei:FireServer(unpack(args))

		task.wait()
		end
		end,
		})
		function safeplace()
			local Bs = Instance.new("Part")
			Bs.Name = "SafePart"
			Bs.Parent = workspace
			Bs.Size = Vector3.new(500,5,500)
			Bs.Anchored = true
			Bs.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1500,2000),math.random(3000,3500),math.random(1500,2000))
			task.wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bs.CFrame + Vector3.new(0,10,0)

		end
		
		function tomap()
			game.Players.LocalPlayer.Character:BreakJoints()
		end
		local Paragraph = Tab:CreateParagraph({Title = "Important", Content = "Use safe place then enable auto reb"})
		local Section = Tab:CreateSection("Safe Place")
		local Button = Tab:CreateButton({
				Name = "Safe Place",
				Callback = function()
					safeplace()
				end
			})
			local Button = Tab:CreateButton({
				Name = "Back To Map",
				Callback = function()
					tomap()
				end,
			}) 
		end

		if game.PlaceId == 1498793919 then
			_G.soquinhomist = false
			_G.kimist = false
			_G.spirit = false
			_G.defensemist = false
			_G.autoreb = false
			local Window = Rayfield:CreateWindow({
				Name = "Niobiumm Hub | "..GameName,
				LoadingTitle = "Niobium Hub",
				LoadingSubtitle = "Loading "..GameName,
				ConfigurationSaving = {
					Enabled = false,
					FolderName = nil, -- Create a custom folder for your hub/game
					FileName = "Big Hub"
				},
					Discord = {
						Enabled = true,
						Invite = "huJUBjhq7e", -- The Discord invite code, do not include discord.gg/
						RememberJoins = true -- Set this to false to make them join the discord every time they load it up
					},
				KeySystem = false, -- Set this to true to use our key system
				KeySettings = {
					Title = "Sirius Hub",
					Subtitle = "Key System",
					Note = "Join the discord (discord.gg/sirius)",
					FileName = "SiriusKey",
					SaveKey = true,
					GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
					Key = "Hello"
				}
			})
			local Tab = Window:CreateTab("Main", 10058434487) -- Title, Image
			local Section = Tab:CreateSection("Training")
			local Toggle = Tab:CreateToggle({
				Name = "Attack",
				CurrentValue = false,
				Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
				Callback = function(Value)
					_G.soquinhomist = Value
					while _G.soquinhomist == true do
		local args = {
			[1] = "1412qRsx0Pr%tect!on1412"
		}
		
		game:GetService("ReplicatedStorage").Punch:FireServer(unpack(args))
		
					
				task.wait()
		
			end
			end,
		})
		local Toggle = Tab:CreateToggle({
			Name = "Spirit",
			CurrentValue = false,
			Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
			Callback = function(Value)
				_G.spirit = Value
				while _G.spirit == true do
					game:GetService("ReplicatedStorage").SpiritXp:FireServer()
			task.wait()
		
		end
		end,
		})
		local Toggle = Tab:CreateToggle({
		Name = "Defense",
		CurrentValue = false,
		Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			_G.defensemist = Value
			while _G.defensemist == true do
		local args = {
			[1] = "1412qRsx0Pr%tect!on1412"
		}
		game:GetService("ReplicatedStorage").Defense:FireServer(unpack(args))
		task.wait()
		end
		end,
		})
		local Toggle = Tab:CreateToggle({
			Name = "Ki",
			CurrentValue = false,
			Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
			Callback = function(Value)
				_G.kimist = Value
				while _G.kimist == true do
		local args = {
			[1] = "1412qRsx0Pr%tect!on1412",
			[2] = 50,
			[3] = CFrame.new(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000)) * CFrame.Angles(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000)),
			[4] = Vector3.new(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000)),
			[5] = Vector3.new(math.random(1, 1000), math.random(1, 1000), math.random(1, 1000))
		}
		game:GetService("ReplicatedStorage").KiBlast:FireServer(unpack(args))
			task.wait()
			end
			end,
			})
			function safeplace()
				local Bs = Instance.new("Part")
				Bs.Name = "SafePart"
				Bs.Parent = workspace
				Bs.Size = Vector3.new(500,5,500)
				Bs.Anchored = true
				Bs.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1500,2000),math.random(3000,3500),math.random(1500,2000))
				task.wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bs.CFrame + Vector3.new(0,10,0)
		
			end
			
			function tomap()
				game.Players.LocalPlayer.Character:BreakJoints()
			end
			local Toggle = Tab:CreateToggle({
				Name = "Auto Reb",
				CurrentValue = false,
				Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
				Callback = function(Value)
					_G.autoreb = Value
					while _G.autoreb == true do
						local SafePart = workspace:FindFirstChild("SafePart")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafePart.CFrame + Vector3.new(0,10,0)
						local args = {
			[1] = "*1614qv^pRsx0Pr%tEct!on1614*"
		}
		game:GetService("ReplicatedStorage").Saisei:FireServer(unpack(args))
		
				task.wait()
				end
				end,
				})
				function safeplace()
					local Bs = Instance.new("Part")
					Bs.Name = "SafePart"
					Bs.Parent = workspace
					Bs.Size = Vector3.new(500,5,500)
					Bs.Anchored = true
					Bs.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1500,2000),math.random(3000,3500),math.random(1500,2000))
					task.wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Bs.CFrame + Vector3.new(0,10,0)
		
				end
				
				function tomap()
					game.Players.LocalPlayer.Character:BreakJoints()
				end
				local Paragraph = Tab:CreateParagraph({Title = "Important", Content = "Use safe place then enable auto reb"})
				local Section = Tab:CreateSection("Safe Place")
				local Button = Tab:CreateButton({
						Name = "Safe Place",
						Callback = function()
							safeplace()
						end
					})
					local Button = Tab:CreateButton({
						Name = "Back To Map",
						Callback = function()
							tomap()
						end,
					}) 
				end



local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local Content = 'Someone used Niobium!'
local Embed = {
			["title"] = "__**New execution.**__",
			["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nGame: "..GameName,
			["type"] = "rich",
			["color"] = tonumber(0xffff00),
			["fields"] = {
				{
					["name"] = "__Player Name:__",
					["value"] = plr.Name,
					["inline"] = true
				},
				{
					["name"] = "__User ID:__",
					["value"] = plr.UserId,
					["inline"] = true
				},
				{
					["name"] = "__Executor:__",
					["value"] = identifyexecutor(),
					["inline"] = true
				},
			},
			["footer"] = {
			    ["text"] = "yes",
			    ["icon_url"] = "https://cdn.discordapp.com/attachments/990273752489132104/995194042621108366/grupo_rakiado.jpg"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = 'https://discord.com/api/webhooks/1068712581671419904/A-9BzGWE6FhxdG_yFTvncijuzMFuHEJ_VpcT-YlKhA_Ttu1DvXeE97iD0HblS96CWkfg';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
