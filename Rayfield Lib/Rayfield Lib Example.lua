repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "[🍀EVENT!] Rebirth Champions X",
	LoadingTitle = "Naneto Cheater",
	LoadingSubtitle = "whosjohnnnnn#4763",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = "peakhub", -- Create a custom folder for your hub/game
		FileName = "peakhub"
	},
	Discord = {
		Enabled = true,
		Invite = "PpMvxxFS", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Peak - Key System",
		Subtitle = "Key System",
		Note = "Please join for key (https://discord.gg/PpMvxxFS)",
		FileName = "PpMvxxFS",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "johnpogi"
	}
})

local rebirthcounter = game:GetService("Players").LocalPlayer.Upgrades.RebirthButtons
local Eggs = game:GetService("Workspace").Scripts.Eggs:GetChildren()
local EggsTable = {}
local Worlds = game:GetService("Workspace").Scripts.Portals:GetChildren()
local WorldsTable = {}
local part = game:GetService("Workspace").Scripts.Portals["Fantasy Jungle"].Touch
local part1 = game:GetService("Workspace").Scripts.Portals.ToFantasy["Fantasy Spawn"].Touch
local game = workspace.Parent

print("Peak Hub - Checking E0F on counter 0000022")





local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(0.5,Enum.EasingStyle.Linear)
local lp = game.Players.LocalPlayer
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

for i,v in pairs(Eggs) do
	table.insert(EggsTable, v.Name)
end


getgenv().autoclick = false
getgenv().autoHatch1 = false
getgenv().autoHatch3 = false
getgenv().selectEgg = "Basic"
getgenv().autorebirth = false
getgenv().autorebirthselect = 1
getgenv().autorebirthbest = rebirthcounter.Value
getgenv().autocraft = false
getgenv().autospinwhell = false
getgenv().noclip = false
getgenv().disableteleporter = false
getgenv().enableteleporter = false
getgenv().whitescreen = false

function disableteleporter()
	for i, v in next, getconnections(part.Touched) do
		v:Disable()
	end

	for i, v in next, getconnections(part1.Touched) do
		v:Disable()
	end
end

function enableteleporter()
	for i, v in next, getconnections(part.Touched) do
		v:Enable()
	end

	for i, v in next, getconnections(part1.Touched) do
		v:Enable()
	end
end


function autoclick()
	while getgenv().autoclick == true do
		game:GetService("ReplicatedStorage").Events.Click3:FireServer()
		game:GetService("ReplicatedStorage").Events.Click3:FireServer(true)
		task.wait(.00000000000001)
	end
end



function autoHatch1()
	while getgenv().autoHatch1 == true do
		game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(getgenv().selectEgg,"Single")
		task.wait(.00000000000000000000000000001)
	end
end

function autoHatch3()
	while getgenv().autoHatch3 == true do
		game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(getgenv().selectEgg,"Triple")
		task.wait(0.5)
	end
end

function autorebirth()
	while getgenv().autorebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().autorebirthselect)
		task.wait(.0000000000000000000000001)
	end
end

function autorebirthbest()
	while getgenv().autorebirthbest == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(rebirthcounter.Value)
		task.wait(.0000000000000000000001)
	end
end

function autocraft()
	while getgenv().autocraft == true do
		game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
		task.wait(.00000000000000000001)
	end
end

function autospinwhell()
	while getgenv().autospinwhell == true do
		game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
		task.wait(.0000000000000000000001)
	end
end

function autofarmluck()
	while getgenv().autofarmluck == true do
		for i,v in pairs(game:GetService("Workspace").Scripts.CollectClovers.Storage:GetDescendants()) do
			if (v.Name == "TouchInterest" and v.Parent) then
				firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
				print("done")
				wait()
				break;
			end
		end
	end
end



function Azdk()
    while getgenv().Azdk == true do
        local args = {
            [1] = "ULOL pogi ni JOHN",
            [2] = "All"}
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        wait(0.75)
    end
end

game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(2)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(3)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(4)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(5)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(6)
game:GetService("ReplicatedStorage").Events.DailyReward:FireServer(7)


-- tabs
local eventTab = Window:CreateTab("Event", 4483362458) -- Title, Image
local AutoFarmTab = Window:CreateTab("AutoFarm", 4483362458) -- Title, Image
print("[PEAK] Establishing Secure Connection...")
local EggsTab = Window:CreateTab("Eggs", 4483362458) -- Title, Image
local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image
local MiscTab = Window:CreateTab("Misc", 4483362458) -- Title, Image




-- toggels

local Toggle = eventTab:CreateToggle({
	Name = "Auto Collect (Clover na Clover)",
	Default = false,
	Callback = function(Value)
        getgenv().CollectCupcakes = Value
        while getgenv().CollectCupcakes do
        wait(0.2)
        for i,v in pairs(game:GetService("Workspace").Scripts.CollectClovers.Storage:GetDescendants()) do
          if (v.Name == "TouchInterest" and v.Parent) then
          firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
          wait()
          break;
         end
        end
	end 
	end,
})



local Toggle = AutoFarmTab:CreateToggle({
	Name = "Pindot gaming",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autoclick = Value
		autoclick()
	end,
})
print("[PEAK] Establishing Secure Connection. Succes!")

local Toggle = MiscTab:CreateToggle({
	Name = "CPU SAVER (Pampalag)",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().Toggle = Value
		while getgenv().Toggle == true do task.wait()
			if getgenv().Toggle == true then
				game:GetService("RunService"):Set3dRenderingEnabled(false)
				setfpscap(10)
			else 
				game:GetService("RunService"):Set3dRenderingEnabled(true)
				setfpscap(360)
			end
		end  
	end,
})

local Toggle = MiscTab:CreateToggle({
	Name = "Chat Spammer!",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().Azdk = Value
		Azdk()
	end,
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autorebirth = Value
		autorebirth() 
	end,
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Auto Rebirth (Best Rebirth)",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autorebirthbest = Value
		autorebirthbest() 
	end,
})

local Toggle = AutoFarmTab:CreateToggle({
	Name = "Auto Spin Whell",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autospinwhell = Value
		autospinwhell() 
	end,
})

local Label = AutoFarmTab:CreateLabel("Current Best Rebirth: "..rebirthcounter.Value)

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Hatch (Single oks lang yan)",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autoHatch1 = Value
		autoHatch1() 
	end,
})

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Hatch (Triple Manloloko ka pala)",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autoHatch3 = Value
		autoHatch3() 
	end,
})

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Craft",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().autocraft = Value
		autocraft() 
	end,
})

local Dropdown = EggsTab:CreateDropdown({
	Name = "Select Betlog",
	Options = EggsTable,
	CurrentOption = "Basic",
	Flag = "Dropdown1",
	Callback = function(Option)
		getgenv().selectEgg = Option
	end,
})




-- dropdowns



local Dropdown = AutoFarmTab:CreateDropdown({
	Name = "Select Rebirth",
	Options = {1,2,3,4,5,6,7,8,9,10,
		11,12,13,14,15,16,17,18,19,20,
		21,22,23,24,25,26,27,28,29,30,
		31,32,33,34,35,36,37,38,39,40,
		41,42,43,44,45,46,47,48,49,50,
		51,52,53,54,55,56,57,58,59,60,
		61,62,63,64,65,66,67,68,69,70,
		71,72,73,74,75,76,77,78,79,80,
		81,82,83,84,85,86,87,88,89,90,
		91,92,93,94,95,96,97,98,99,100},
	CurrentOption = "Wala",
	Flag = "Dropdown1",
	Callback = function(Option)
		getgenv().autorebirthselect = Option
		print(getgenv().autorebirthselect)  
	end,
})





local fovToggled = false

-- Set up the toggle button
local Toggle = PlayerTab:CreateToggle({
	Name = "Para Makita mo Halaga ko",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		-- Toggle the FOV based on whether the toggle is on or off
		if Value then
			fovToggled = true
			game:GetService("Workspace").CurrentCamera.FieldOfView = 100 -- Change 100 to whatever value you want the FOV to be
		else
			fovToggled = false
			game:GetService("Workspace").CurrentCamera.FieldOfView = 70 -- Change 70 to whatever value you want the default FOV to be
		end
	end,
})

-- misc

local Label = MiscTab:CreateLabel("Anti Afk is enabled")

-- local player

local walkspeedToggled = false

-- Set up the toggle button
local Toggle = PlayerTab:CreateToggle({
	Name = "Snatcher sa quiapo",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		-- Toggle the walkspeed based on whether the toggle is on or off
		if Value then
			walkspeedToggled = true
			game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 100 -- Change 100 to whatever value you want the walkspeed to be
		else
			walkspeedToggled = false
			game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16 -- Change 16 to whatever value you want the default walkspeed to be
		end
	end,
})



-- anti afk

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
	v:Disable()
end




Rayfield:Notify({
	Title = "Peakhub",
	Content = "Peaks Successfully Loaded!: [🍀EVENT!] Rebirth Champions X",
	Duration = 5,
	Image = 5,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Sige lods",
			Callback = function()
			end
		},
	},
})

local Button = MiscTab:CreateButton({
	Name = "Bye Lods",
	Callback = function()
		Rayfield:Destroy()
	end,
})
