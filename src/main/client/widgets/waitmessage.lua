local Suit = require "libs.suit"
local Class = require "libs.hump.class"
local Lfs = require "lfs"

local WaitMessage = {}
WaitMessage.__index = WaitMessage

function WaitMessage:new (channel, onFinish)
  local obj = setmetatable({}, self)
  obj._channel = channel
  obj._onFinish = onFinish
  obj._closed = false
  return obj
end

function WaitMessage:update (dt)
  if not self._closed then
    value = self._channel:pop()
    if value and value == "finish" then
      self._channel:release()
      self._onFinish()
      self._closed = true
    end
  end
end

function WaitMessage:isMouseFocused ()
  return not self._closed
end

function WaitMessage:draw ()
  if not self._closed then
    local width, height = love.window.getMode()
    if lfs.attributes("resources/status.txt") then
      local df = io.open("resources/status.txt", "r")
      local status = df:read("a")
      local x, y = width/2-100, height/2-30

      love.graphics.setColor(0, 0, 0, .5)
      love.graphics.rectangle("fill", x, y, 200, 60, 5, 5)
      love.graphics.setColor(1, 1, 1)
      love.graphics.printf("Waiting...", x+5, y+10, 190, "center")
      love.graphics.printf(status, x+5, y+30, 190, "center")
    else
      local x, y = width/2-100, height/2-15

      love.graphics.setColor(0, 0, 0, .5)
      love.graphics.rectangle("fill", x, y, 200, 30, 5, 5)
      love.graphics.setColor(1, 1, 1)
      love.graphics.printf("Waiting...", x+5, y+10, 190, "center")
    end
  end
end

return setmetatable(WaitMessage, {__call = WaitMessage.new})
