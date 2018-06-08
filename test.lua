-- test math library

------------------------------------------------------------------------------
require"mathx"

function f(x)
 print(x,math.isfinite(x),math.isnan(x),math.isnormal(x),math.fpclassify(x))
end

f(0)
f(1/0)
f(0/0)
f(math.infinity)
f(math.nan)

x=1
while x~=0 do
 y,x=x,x/2
 if not math.isnormal(x) then break end
end
f(y)
f(x)
f(math.nextafter(x,1))

while x~=0 do
 y,x=x,x/2
end
f(y)
f(x)

function f(x)
 local a=math.nextafter(x,-1/0)
 local b=math.nextafter(x, 1/0)
 print(a,x,b,x-a,b-x)
end

f(1)
f(0)

------------------------------------------------------------------------------
