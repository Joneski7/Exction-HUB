local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👅Exciton Cheat Hub 👅",
   LoadingTitle = "Exction",
   LoadingSubtitle = "by kernal & joneski",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Create "Character" tab
local TabCharacter = Window:CreateTab("Character", 4483362458)

-- Create "Hacks" tab
local TabHacks = Window:CreateTab("Hacks", 4483362458)

-- Function to start flying
local startFlying, stopFlying = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheXPredator2009/Flight-Script/main/source.lua"))()

-- Create flying toggle button
local ToggleFly = TabHacks:CreateToggle({
    Name = "Fly",
    CurrentValue = false,
    Flag = "FlyToggle",
    Callback = function(Value)
        if Value then
            startFlying(5) -- Start flying when toggle is turned on
        else
            stopFlying() -- Stop flying when toggle is turned off
        end
    end
})

local Tab = Window:CreateTab("Tongue Battles OP Cheats", 4483362458) -- Title, Image

local Slider1 = Tab:CreateSlider({
   Name = "Total Kills",
   Range = {0, 100000},
   Increment = 3,
   Suffix = "(OP)",
   CurrentValue = 0,
   Flag = "Slider1",
   Callback = function(Value)
       -- Round the value to the nearest integer
       local roundedValue = math.floor(Value + 0.5)
       
       -- Get the LocalPlayer object
       local player = game.Players.LocalPlayer

       -- Check if the LocalPlayer exists
       if player then
           -- Access the leaderstats folder for the player
           local folder = player.leaderstats

           -- Access the StringValue named 'Total Kill' within the folder
           local totalKillValue = folder:FindFirstChild("Total Kill")

           -- Check if the StringValue exists before setting its value
           if totalKillValue then
               -- Set the value of the StringValue to the rounded value
               totalKillValue.Value = tostring(roundedValue)
               print("Successfully set 'Total Kill' value to " .. roundedValue)
           else
               warn("StringValue 'Total Kill' not found")
           end
       else
           warn("LocalPlayer not found")
       end
   end,
})

local Slider2 = Tab:CreateSlider({
   Name = "Kills",
   Range = {0, 100000},
   Increment = 3,
   Suffix = "OP",
   CurrentValue = 0,
   Flag = "Slider2",
   Callback = function(Value)
       -- Round the value to the nearest integer
       local roundedValue = math.floor(Value + 0.5)
       
       -- Get the LocalPlayer object
       local player = game.Players.LocalPlayer

       -- Check if the LocalPlayer exists
       if player then
           -- Access the leaderstats folder for the player
           local folder = player.leaderstats

           -- Access the StringValue named 'Kill' within the folder
           local killValue = folder:FindFirstChild("Kill")

           -- Check if the StringValue exists before setting its value
           if killValue then
               -- Set the value of the StringValue to the rounded value
               killValue.Value = tostring(roundedValue)
               print("Successfully set 'Kill' value to " .. roundedValue)
           else
               warn("StringValue 'Kill' not found")
           end
       else
           warn("LocalPlayer not found")
       end
   end,
})


local Button = Tab:CreateButton({
   Name = "Infinite HP",
   Callback = function()
   -- The function that takes place when the button is pressed
   -- Function to set the local player's health to infinity
local function setInfiniteHealth()
    local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.MaxHealth = math.huge
        humanoid.Health = math.huge
    end
end

-- Call the function to set infinite health
setInfiniteHealth()
   end,
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HenSeu87PofghYT/Tounge-Battles/main/Nameless%20Scripts"))()
   end,
})

