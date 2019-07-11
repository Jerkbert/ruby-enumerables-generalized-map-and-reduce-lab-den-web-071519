def map(s)
  new = []
  i = 0
  while i < s.length
    new << yield(s[i])
    i += 1
  end
new
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end

puts map[2, 4, 6, 8]{|s| s*2}

puts reduce[4, 5, 6]{|s|}
