ShipSelectState = Class{__includes = BaseState}

function ShipSelectState:enter()

end

function ShipSelectState:update(dt)

  if love.keyboard.wasPressed('escape') then
    love.event.quit()
  end

  if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
    gStateMachine:change('play')
  end

end

function ShipSelectState:render()
  love.graphics.setColor(0,255,255)
  love.graphics.setFont(gFonts['small'])
  love.graphics.printf("SHIP SELECT STATE", 0, 20, VIRTUAL_WIDTH, 'center')

end