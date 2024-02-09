
local basalt = require('Modules/basalt')
local debugMenu = require('basaltDebug') --'shittyDebug')
    :setBasalt(basalt)


--sDebug, basalt, mainFrame = x[1], x[2], x[3]
--error''
--sDebug.debug('hello')
--error''
--[[
do
    while true do
        sDebug.debug('sup')
        os.sleep(1)
    end
end
--]]

local mainFrame = basalt.createFrame("mainFrame")
    :setBackground(colours.black, "-", colours.grey)

local w, h = mainFrame:getSize()
--[[
local debugMenuFrame = mainFrame:addMovableFrame('a')
    :setSize(w-10, h-6)--("{parent.w/1.5}", "{parent.h/3}")
    :setPosition(0,0)
    :setBackground(colours.black, '/', colours.grey)
    :setForeground(colours.white)
--]]


--[[
local debugTestFrame = mainFrame:addFrame('b')
    :setSize(10, 10)--("{parent.w/1.5}", "{parent.h/3}")
    :setPosition(3, 3)
    :setBackground(colours.yellow)
    :setForeground(colours.red)
--]]

local debugFrame = debugMenu:createDebugMenu(mainFrame, {'debugMenuFrame', 'debugMenuTextbox', 'debugMenuCheckbox'})
--debugFrame.debugFrame:show()
--debugFrame.createdDebugMenu.debugMenuFrame:show()
--local tS = testShit(mainFrame)
 

local t1 = mainFrame:addThread()
local t2 = mainFrame:addThread()

local i = 0;
--error'2'
t1:start(function(...)
    while true do
        debugFrame.debug('test: '..i)
        i = i + 1;
        if i%5==0 then
            os.sleep(1)
        end
        if i == 40 then
            break;
        end
        --os.sleep(1)
    end

end)
t2:start(function(...)
    while true do
        --print('wow')
        

        os.sleep(1)
    end

end)
--error''

basalt.autoUpdate()
