sleep 0.2;
/usr/bin/scrot '/tmp/%F_%T_$wx$h.png' -s -e 'xclip -selection clipboard -target image/png -i $f'
notify-send 'Screenshot copied to clipboard'
