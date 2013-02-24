-- This file is for use with Corona(R) SDK
--
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = (require "shapedefs").physicsData(scaleFactor)
--			local shape = display.newImage("objectname.png")
--			physics.addBody( shape, physicsData:get("objectname") )
--

-- copy needed functions to local scope
local unpack = unpack
local pairs = pairs
local ipairs = ipairs

local M = {}

function M.physicsData(scale)
	local physics = { data =
	{ 
		
		["floor-3"] = {
                    
                    
                    
                    
                    {
                    pe_fixture_id = "floor-3", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -169, 296  ,  -211, 336  ,  -211, 289  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-3", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   105, 297  ,  211, 336  ,  -211, 336  ,  -169, 296  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-3", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   157, 231  ,  211, 336  ,  105, 297  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-3", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   157, 231  ,  158, -336  ,  211, -336  ,  211, 336  }
                    }
                    
                    
                    
		}
		
		, 
		["floor-2"] = {
                    
                    
                    
                    
                    {
                    pe_fixture_id = "floor-2", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -80.5, -46.5  ,  33.5, -47.5  ,  118.5, -43.5  ,  311.5, -9.5  ,  313.5, -8.5  ,  313.5, 47.5  ,  -313.5, 47.5  ,  -313.5, -26.5  }
                    }
                    
                    
                    
		}
		
		, 
		["floor-1"] = {
                    
                    
                    
                    
                    {
                    pe_fixture_id = "floor-1", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   202.5, 321  ,  -202.5, 321  ,  202.5, 243  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-1", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -202.5, 321  ,  -134.5, 287  ,  -24.5, 285  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-1", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -202.5, 321  ,  -154.5, 267  ,  -134.5, 287  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-1", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -154.5, 267  ,  -202.5, 321  ,  -202.5, -319  ,  -154.5, -321  }
                    }
                    
                    
                    
		}
		
		, 
		["floor-5"] = {
                    
                    
                    
                    
                    {
                    pe_fixture_id = "", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -301, -76  ,  301, 29  ,  122, 75  ,  -301, 74  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   122, 75  ,  301, 29  ,  301, 76  }
                    }
                    
                    
                    
		}
		
		, 
		["floor-4"] = {
                    
                    
                    
                    
                    {
                    pe_fixture_id = "floor-4", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -220.5, -143.5  ,  -57.5, -137.5  ,  -217.5, -46.5  ,  -321.5, -122.5  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-4", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -57.5, -137.5  ,  114.5, -64.5  ,  321.5, 144.5  ,  -217.5, 139.5  ,  -217.5, -46.5  }
                    }
                     ,
                    {
                    pe_fixture_id = "floor-4", density = 2, friction = 0.5, bounce = 0, 
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   321.5, 144.5  ,  114.5, -64.5  ,  321.5, -5.5  }
                    }
                    
                    
                    
		}
		
	} }

        -- apply scale factor
        local s = scale or 1.0
        for bi,body in pairs(physics.data) do
                for fi,fixture in ipairs(body) do
                    if(fixture.shape) then
                        for ci,coordinate in ipairs(fixture.shape) do
                            fixture.shape[ci] = s * coordinate
                        end
                    else
                        fixture.radius = s * fixture.radius
                    end
                end
        end
	
	function physics:get(name)
		return unpack(self.data[name])
	end

	function physics:getFixtureId(name, index)
                return self.data[name][index].pe_fixture_id
	end
	
	return physics;
end

return M
