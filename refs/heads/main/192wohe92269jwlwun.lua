local Pets = require(game:GetService("ReplicatedStorage").Library.Directory.Pets)
local fromPet = "Reaper Cat"
local toPet = "Titanic Pumpkin Cat"
 
for i, v in pairs(Pets[fromPet] or {}) do
    Pets[fromPet][i] = nil
end

for i, v in pairs(Pets[toPet] or {}) do
    Pets[fromPet][i] = v
end

game.StarterGui:SetCore("SendNotification", {
    Title = "Notification";
    Text = "Titanic Hunter Active! Made by BigScripter";
    Duration = 5;
}) 
