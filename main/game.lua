debuggamescope = debuggamescope or {}

local M = debuggamescope
M.speed = 0
M.ctrl_speed = 0
-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
M.set_control_speed = function(speed)
	M.ctrl_speed = speed
	M.ctrl_speed = M.ctrl_speed - 0.3 -- lazy remapping to a negative range
end

M.set_control_direction = function(x_pct)
	local r_pct = x_pct - 0.5
	local l_pct = 0.5 - x_pct
end

M.fixed_update = function(dt)
	-- compute current speed
	M.speed = M.speed + (dt*M.ctrl_speed)
	if M.speed < 0 then
		M.speed = 0
	end
end

return M
