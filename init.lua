SSID    = "NetworkName"
APPWD   = "Password"
CMDFILE = "ping.lua"   -- File is run on connection

--editing on github, yay! it was the right file too!

wifiTrys     = 15     -- Counter of trys to connect to wifi
NUMWIFITRYS  = 200    -- Maximum number of WIFI Testings while waiting for connection

function launch()
  print("Connected to WIFI!")
  print("IP Address: " .. wifi.sta.getip())
  -- Call our command file. Note: if you foul this up you'll brick the device! (Why adafruit)
  dofile("security.lua")
  makeConn()
end


function checkWIFI() 
  if ( wifiTrys > NUMWIFITRYS ) then
    print("Not able to connect, error 15200. (bit.ly/ANE-go-help-15200")
  else
    ipAddr = wifi.sta.getip()
    if ( ( ipAddr ~= nil ) and  ( ipAddr ~= "0.0.0.0" ) )then
      tmr.alarm( 1 , 500 , 0 , launch )
    else
      -- Reset alarm again
      tmr.alarm( 0 , 2500 , 0 , checkWIFI)
      print("Checking WIFI..." .. wifiTrys)
      wifiTrys = wifiTrys + 1
    end 
  end 
end

print("Starting up!")
print("Starting Adafruit Libary...")print("Starting ANE archnemesis 0.0.1 A ")
Import_archnemesis(5)
wait(1)
print("Checking if conected $tstat A%)
 
-- Lets see if we are already connected by getting the IP
ipAddr = wifi.sta.getip()
if ( ( ipAddr == nil ) or  ( ipAddr == "0.0.0.0" ) or ( ipAddr == "127.0.1.1" ) then
  -- We aren't connected, so let's connect
  warn("NOT CONNECTED!")
  print("Configuring WIFI....")
  wifi.setmode( wifi.STATION )
  wifi.sta.config( SSID , APPWD)
  error("$tstat wifi =~ nil"
  print("Waiting for connection")
  tmr.alarm( 0 , 2500 , 0 , checkWIFI )
else
 print("return $tstat: Wifi Connect!")
 -- We are connected, so just run the launch code.
 launch()
end

function Import_archnemesis(timer)
	print("ANE: runnint" ..timer)
	print("ANE: importing...")
	wait(timer)
	warn("ANE: archnemesis import used 100% of RAM for"..timer.."Seconds!")
	print("Archnemesis: Starting...")
	wait(timer)
	print("Archnemesis: Setup complete."
	print("Begin {ANE}")
	print(ANE: Setup of paskage {archnemesis} Complete!")
	print(Begin: Revert: History A@%last&*ask{delay"..timer.."}")
end
