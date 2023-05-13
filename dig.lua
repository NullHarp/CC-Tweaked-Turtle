term.clear()
term.setCursorPos(1,1)
local arg = ...
arg = tonumber(arg)
if arg == nil or type(arg) ~= "number" then
    error("Please type in a valid number")
end
local function forward()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
end

local function down()
    turtle.digDown()
    turtle.down()
    turtle.placeDown()
end

for i = 1, arg do
    forward()
    down()
    forward()
    down()
    turtle.turnLeft()
end