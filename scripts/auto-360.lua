-- Automatically triggers the 360 script logic when "360" is in the filename
mp.register_event("file-loaded", function()
    local filename = mp.get_property("filename", "")
    if filename:find("360") then
        -- This simulates pressing Ctrl+e automatically
        mp.command("script-binding mpv360/toggle")
    end
end)