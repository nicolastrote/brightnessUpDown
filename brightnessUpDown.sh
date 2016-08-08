#! /bin/bash

if [ "$#" -eq 1 ]
	then   
    echo "command given :" $1
    if [ $1 == "up" ]  
   		then
   		# Increase backlight
   		echo "Increase backlight"
   		pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness 9
   	    else 
   	    if [ $1 == "down" ] 
			then
			# Decrease backlight
			echo "Decrease backlight"
			pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness 2 
			else 
			echo "Your command is not known, use 'up' or 'down' command"
   		fi
   	fi
    else 
	echo "You forget 'up' or 'down' command"
fi
exit
