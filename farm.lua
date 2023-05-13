local maxX,maxY,boolLoop = ...

maxX = tonumber(maxX)
maxY = tonumber(maxY)

if boolLoop == nil then
    boolLoop = false
end

local function harvest()
    local bool, data = turtle.inspectDown()
    if bool ~= false then
        if data.state.age == 7 then
            turtle.digDown()
            turtle.placeDown()
        end
    end
end
for y = 1, maxY do
    harvest()
    if y % 2 == 1 and y > 1 then
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
    elseif y % 2 == 0 and y > 1 then
        turtle.turnRight()
        turtle.forward()
        turtle.turnRight()
    end
    for x = 1, maxX-1 do
        harvest()
        turtle.forward()
    end
end
turtle.turnLeft()
turtle.turnLeft()

while boolLoop do
    for y = 1, maxY do
        harvest()
        if y % 2 == 1 and y > 1 then
            turtle.turnLeft()
            turtle.forward()
            turtle.turnLeft()
        elseif y % 2 == 0 and y > 1 then
            turtle.turnRight()
            turtle.forward()
            turtle.turnRight()
        end
        for x = 1, maxX-1 do
            harvest()
            turtle.forward()
        end
    end
    turtle.turnLeft()
    turtle.turnLeft()
    sleep(120)
end