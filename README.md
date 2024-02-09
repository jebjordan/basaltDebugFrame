## basaltDebugFrame
	Basalt Debug Frame - was annoyed because the one built in wasn't working. So I grabbed that and "fixed" it


> [!NOTE]
> Original code sourced from [@Pyroxenium/Basalt](https://github.com/Pyroxenium/Basalt/blob/master/Basalt/plugins/debug.lua)

### download
```
wget https://github.com/jebjordan/basaltDebugFrame/raw/main/shittyDebug.lua basaltDebug.lua
```

### example [^1]
 ```lua https://raw.githubusercontent.com/jebjordan/basaltDebugFrame/main/t3.lua
local basalt = require('Modules/basalt')
local debugMenu = require('basaltDebug')--'shittyDebug')
    :setBasalt(basalt)

local mainFrame = basalt.createFrame("mainFrame")
	:setBackground(colours.black, "-", colours.grey)

local w, h = mainFrame:getSize()
local debugFrame = debugMenu:createDebugMenu(mainFrame, {'debugMenuFrame', 'debugMenuTextbox', 'debugMenuCheckbox'})

local t1 = mainFrame:addThread()

local i = 0;
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
	end

end)

basalt.autoUpdate()
 ```





[^1]: [t3.lua](https://github.com/jebjordan/basaltDebugFrame/blob/main/t3.lua)
