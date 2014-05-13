etc = {
  cmdchar = "'"
}
plugin = {}
tests = {}

nick = 'anders'
bot = 'luabot'
boturl = 'http://localhost/'
cmdchar = '\\'

nicklist = function()
  return {'anders', 'byte[]', 'wm4'}
end

names = function(sep)
  return table.concat(nicklist(), sep or ' ')
end

rnick = function()
  local t = nicklist()
  return t[math.random(1, #t)]
end

getname = function()
  return 'anders'
end

account = 2

local history = {
  {'this is a message', 'anders', os.time()},
  {'i maek a typo', 'anders', os.time() - 12},
  {'good one fr8', 'byte[]', os.time() - 24}
}

_getHistory = function(n)
  if history[n] then
    return unpack(history[n])
  end
end
