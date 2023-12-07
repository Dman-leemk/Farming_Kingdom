
-------------------------------------------------- Lua modules -------------------------------------------------------

local state = {} --                    1  2  3  4  5  6  7  8  9   10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29  30
-- Stores the first required food type to complete the lvl     --
state["1st_requirement_type"] = {1, 2, 1, 3, 1, 1, 4, 2, 1,  5,  3,  6,  4,  1,  7,  4,  8,  5,  3,  9,  2,  10, 7,  5,  1,  2,  11, 5,  12, 10}
-- Stores the first required food quantity to complete the lvl --
state["1st_requirement_qty"]  = {5, 3, 7, 5, 8, 5, 5, 9, 10, 10, 6,  12, 12, 20, 15, 17, 20, 15, 20, 15, 17, 20, 15, 25, 40, 40, 20, 35, 20, 50}
--  Stores the second required food type to complete the lvl   --
state["2nd_requirement_type"] = {0, 0, 2, 0, 3, 2, 0, 4, 3,  0,  4,  0,  5,  3,  0,  5,  0,  6,  5,  0,  7,  0,  9,  6,  4,  10, 0,  8,  0,  11}
-- Stores the first required food quantity to complete the lvl --
state["2nd_requirement_qty"]  = {0, 0, 4, 0, 4, 6, 0, 7, 5,  0,  7,  0,  14, 17, 0,  16, 0,  17, 14, 0,  18, 0,  15, 25, 40, 40, 0,  35, 0,  50}
--  Stores the third required food type to complete the lvl    --
state["3rd_requirement_type"] = {0, 0, 0, 0, 0, 3, 0, 0, 4,  0,  5,  0,  6,  6,  0,  7,  0,  8,  7,  0,  9,  0,  10, 8,  0,  0,  0,  11, 0,  12}
-- Stores the third required food quantity to complete the lvl --
state["3rd_requirement_qty"]  = {0, 0, 0, 0, 0, 5, 0, 0, 7,  0,  6,  0,  7,  9,  0,  10, 0,  16, 18, 0,  10, 0,  15, 25, 0,  0,  0,  15, 0,  50}
-- Stores the level at which crops unlock --
state["crop_unlock_type"]     = {0, 0, 2, 0, 0, 0, 0, 0, 3,  0,  0,  0,  0,  4,  0,  0,  0,  0,  5,  0,  0,  0,  0,  0,  6,  0,  0,  0,  0,  0 }
-- Stores the levlel at which foods unlock --
state["food_unlock_type"]     = {0, 2, 0, 3, 0, 4, 0, 0, 0,  5,  0,  6,  0,  0,  7,  0,  8,  0,  0,  9,  0,  10, 0,  0,  0,  0,  0,  0,  0,  0 }
-- Stores the maximum day for each level --
state["level_deadline"] = 
{5,   10,  15,  20,  25,  30,  35,  40,  45,  50,
50,  60,  65,  70,  75,  80,  85,  90,  95,  100,
105, 110, 115, 120, 125, 130, 135, 140, 145, 150}

table_ctrl = {}



function table_ctrl.set_lvl(index, value)
	state[index][current_lvl] = value
end 

function table_ctrl.get_lvl(index)
	info = state[index][current_lvl]
	return info
end

return table_reading
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------