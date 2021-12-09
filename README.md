> I made a little standalone utility that **removes global chat** in FiveM servers, very suitable for RP servers.

It also adds a **config file** where you can enable/disable an **OOC chat** that triggers when you don't type any command in the chat, so anything you type in the chat will be formatted as OOC.

I know there are plenty of chat alternatives out there, but I didn't find any simple script that only adds that functionality and plug & play,  so I made it. With this small solution, you can easily combine it with other scripts and frameworks without breaking functionalities.

Currently, these are the configurable values:

```
-- Enable OOC Chat, if false all options below won't take effect
Config.EnableChatOOC = true -- Default: true

-- Prefix and color
Config.Prefix = 'OOC | ' -- Default: 'OOC | '
Config.PrefixColor = { 0, 0, 255} -- Default: { 0, 0, 255}

-- Change chat distance or make it global
Config.ChatDistance = 20.0 -- Default: 20.0
Config.EnableGlobalOOC = false -- Default: false
```
