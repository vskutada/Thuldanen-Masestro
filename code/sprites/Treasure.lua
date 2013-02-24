Treasure = {}

function Treasure:new()

	local box = display.newImage("sprites/Treasure.png")
	box.grappled = false -- indicates if a player has attached a chain/grapple to it
	box.player = nil

	function box:init()
		mainGroup:insert(box)
		local treasurePhysicsData = (require "sprites.TreasurePhysicsData").physicsData(1.0)
		physics.addBody(self, "dynamic", treasurePhysicsData:get("treasure"))
		self.isFixedRotation = true
		self:addEventListener("touch", self)
	end

	function box:touch(event)
		if event.phase == "ended" then
			if self.bodyType == "dynamic" then
				Runtime:dispatchEvent({name="onPlayerGrappleTreasure", target=self})
				return true
			else
				Runtime:dispatchEvent({name="onPlayerUnGrappleTreasure", target=self})
				return true
			end
		end
	end

	function box:activateLevitation(player)
		gameLoop:addLoop(self)
		self.player = player
		self.bodyType = "kinematic"
	end

	function box:deactivateLevitation()
		gameLoop:removeLoop(self)
		self.player = nil
		self.bodyType = "dynamic"
	end

	function box:tick(time)
		local floatSpeed
		

		local speed = 0.1
		local player = self.player
		local deltaX = self.x - player.x
		local deltaY = self.y - player.y

		if math.abs(deltaY) > 120 then
			floatSpeed = -13
		else
			floatSpeed = -14
		end
		if math.abs(deltaY) < 60 then
			self.y = self.y - 1
		end
		if math.abs(deltaX) > 190 then
			speed = player.speed / 10
		else
			speed = 0.1
		end
		--self:applyForce(0, floatSpeed, 0, self.y + self.height / 2)
		if math.abs(deltaX) <= 120 then
			speed = 0.01
		end

		local dist = math.sqrt((deltaX * deltaX) + (deltaY * deltaY))

		local moveX = speed * (deltaX / dist) * time
		local moveY = speed * (deltaY / dist) * time

		if (math.abs(moveX) > dist or math.abs(moveY) > dist) then
			--self.x = playerView.x
			--self.y = playerView.y

		else
			self.x = self.x - moveX
			--self.y = self.y - moveY
			--self:applyForce(-(self.x - moveX), 0, self.x, self.y)
		end


	end

	box:init()

	return box

end

return Treasure