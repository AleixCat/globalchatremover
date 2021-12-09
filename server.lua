AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message,1,string.len("/"))=="/" then
		-- Do nothing because this is a command
	else
		-- Add here what you want to do when user type in chat
		if Config.EnableChatOOC then
			local src = source
			local Players = GetPlayers()
			for k, v in pairs(Players) do
				if Config.EnableGlobalOOC then
					TriggerClientEvent('chat:addMessage', v, {
						color = Config.PrefixColor,
						multiline = true,
						args = {Config.Prefix.. GetPlayerName(src), message}
					})
				elseif v == src then
					TriggerClientEvent('chat:addMessage', v, {
						color = Config.PrefixColor,
						multiline = true,
						args = {Config.Prefix.. GetPlayerName(src), message}
					})
				elseif #(GetEntityCoords(GetPlayerPed(src)) - GetEntityCoords(GetPlayerPed(v))) < Config.ChatDistance then
					TriggerClientEvent('chat:addMessage', v, {
						color = Config.PrefixColor,
						multiline = true,
						args = {Config.Prefix.. GetPlayerName(src), message}
					})
				end
			end
		end
	end
	CancelEvent()
end)
