debug_print("Window name: " .. get_window_name())
debug_print("Window class: " .. get_window_class())

if (get_window_class() == "Google-chrome") then
	set_window_workspace(1)
	change_workspace(1)
	maximize()
end

if (get_window_class() == "Sublime_text") then
	set_window_workspace(2)
	change_workspace(2)
	set_window_fullscreen(true)
end

if (get_window_class() == "Gnome-terminal") then
	set_window_workspace(3)
	change_workspace(3)
	set_window_fullscreen(true)
end

if (get_window_class() == "Firefox") then
	set_window_workspace(4)
	change_workspace(4)
	maximize()
end

focus()
