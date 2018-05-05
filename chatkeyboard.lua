local e=require("event")
local str=require("string")
local c=require("component")
local j = 1
local realkeyboardadd="44212b7d-48cd-43f5-a49d-c5c39fd092d8"
function cb (_,add,nick,text)
for i in string.gmatch(text, ".") do
if not(i=="@" or i=="#" or i=="$" or i=="%" or i=="^") then
e.push("key_down",realkeyboardadd,str.byte(i),30,"dasha0202")
e.push("key_up",realkeyboardadd,str.byte(i),30,"dasha0202")
end
if i=="^" then e.push("key_down",realkeyboardadd,8,14,"dasha0202");e.push("key_up",realkeyboardadd,8,14,"dasha0202") end
if i=="@" then e.push("key_down",realkeyboardadd,0,200 ,"dasha0202");e.push("key_up",realkeyboardadd,0,200 ,"dasha0202") end
if i=="#" then e.push("key_down",realkeyboardadd,0,203 ,"dasha0202");e.push("key_up",realkeyboardadd,0,203 ,"dasha0202") end
if i=="$" then e.push("key_down",realkeyboardadd,0,208 ,"dasha0202");e.push("key_up",realkeyboardadd,0,208 ,"dasha0202") end
if i=="%" then e.push("key_down",realkeyboardadd,0,205 ,"dasha0202");e.push("key_up",realkeyboardadd,0,205 ,"dasha0202") end
j=j+1
end
e.push("key_down",realkeyboardadd,13,30,"dasha0202")
e.push("key_up",realkeyboardadd,13,30,"dasha0202")
end

e.listen("chat_message",cb)