# tg-bot-pi
Bot for Telegram (tg)

## requirements
* Need to install [telegram-cli](https://github.com/vysheng/tg) first.
* Change absolute path for **HOME** and **TMP_PATH**

## usage
```
telegram-cli -W -s <path/to/script/action.lua>
```

## plugins
| script      | command           | remarks  |
| ------------- |:----------------| -----:|
| __reload_plugins.lua | pi:reload | admin only |
| zzz.cputemp.lua     | pi:cputemp | admin only |
| zzz.ramusg.lua     | pi:ramusg | admin only |
| zzz.uptime.lua | pi:uptime | admin only |
| currency.lua | pi:$ | |
| myid.lua | pi:myid | |
| poslaju.lua | pi:poslaju | |
| time.lua | pi:time | |
| ... | | |
