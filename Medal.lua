Medal = Class{}

function Medal:init()
    self.x = 10
    self.y = 10
    if gMedal == 'bronze' then
        self.image = love.graphics.newImage('bronze.png')
    elseif gMedal == 'silver' then
        self.image = love.graphics.newImage('silver.png')
    elseif gMedal == 'gold' then
        self.image = love.graphics.newImage('gold.png')
    end
    self.width = self.image:getWidth() 
    self.height = self.image:getHeight() 
end

function Medal:render()
    if gMedal ~= 'none' then
        -- renders medal scaled to half
        love.graphics.draw(self.image, self.x, self.y, 0, 0.5, 0.5)
    end
end