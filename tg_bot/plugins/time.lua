return function(msg)
  cmd = "pi:time"
  if args[1]==cmd then
    if (#args == 1 or #args > 3) then
      send_msg (replyto(msg), "usage: pi:time <COUNTRY_NAME> [<CITY_NAME>]", ok_cb, false)
    else
      if #args > 2 then
        searchq = args[2]..'/'..args[3]
	  else
        searchq = args[2]
      end

      curr_time = os.time()
      try = os.execute('wget -qO- http://www.thetimenow.com/clock/'..searchq..' | egrep "h1|main_time|main_date" | sed -e "s/<[^>]*[>]//g" -e "s/^[ \t]*//" -e "s/&nbsp;//g" > '..TMP_PATH..'/time'..curr_time..'.out')

      if try then
        send_text (replyto(msg), TMP_PATH.."/time"..curr_time..".out", ok_cb, false)
      end
    end
    return true
  end
end
