local load_ts = os.time()

etc = {}
etc.cmdchar = "'"
etc.cmdprefix = etc.cmdchar

plugin = {}
tests = {}

account = 3
nick = "anders"
bot = "luabot"
boturl = "http://localhost/"
cmdchar = "\\"
cmdprefix = cmdchar
chan = "#dbot"

Cache = {}
LocalCache = {}

Input = {}

Output = {}
Output.maxLines = 4

API = function() end

_clown = function() end
boost = function() end
_memusage = function() return 1024 end
_yield = coroutine.yield -- ?
halt = os.exit

godloadstring = loadstring
guestloadstring = loadstring
safeloadstring = loadstring

nicklist = function()
  return {"anders", "byte[]", "wm4"}
end

rnick = function()
  local t = nicklist()
  return t[math.random(1, #t)]
end

names = function(sep)
  return table.concat(nicklist(), sep or " ")
end

rnick = function()
  local t = nicklist()
  return t[math.random(1, #t)]
end

getname = function()
  return "anders"
end

owner = function()
  return account
end

urlEncode = function(u)
  return u
end

urlDecode = function(u)
  return u
end

worth = function()
  return 0
end

local history = {
  {"this is a message", "anders", load_ts},
  {"i maek a typo", "anders", load_ts - 12},
  {"good one fr8", "byte[]", load_ts - 24}
}

_getHistory = function(n)
  if history[n] then
    return unpack(history[n])
  end
end
