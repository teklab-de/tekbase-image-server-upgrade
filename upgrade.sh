#!/bin/bash

# TekBase - Server Control Panel
# Copyright 2005-2018 TekLab
# Christian Frankenstein
# Website: https://teklab.de
# Email: service@teklab.de

runloop=0
while [ $runloop -lt 1 ]; do
	games=`cat games.lst`
    
    old=$IFS
    IFS$'\n'
    for LINE in $games
    do
    	game=`echo "$LINE" | awk -F';' '{print $1}'`
		gamefile=`echo "$LINE" | awk -F';' '{print $2}'`
        
        mkdir $game
        mv $gamefile $game/$gamefile
        if [ -d addons ]; then
			addons=0
            cd addons
			for FILE in `find $game-*`
            do
				if [ "$addons" = "0" ]; then
					if [ ! -d $game/addons ]; then
						mkdir $game/addons
					fi
				fi
				addons=1
			done
            cd ..
            rm -R addons
        fi
        if [ -d mods ]; then
			mods=0
            cd mods
			for FILE in `find $game-*`
            do
				if [ "$mods" = "0" ]; then
					if [ ! -d $game/mods ]; then
						mkdir $game/mods
					fi
				fi
				mods=1
			done
            cd ..
            rm -R mods
        fi
	done
    
    IFS=$old
    
    mkdir apps
    
    mkdir voices
    mv ts3* voices
  	mv ventrilo* voices
    mv mumble* voices
    
    mkdir streams
    mv sc* streams
    
    mkdir vserver
    mkdir vserver/openvz
    mv OpenVZ/* vserver/openvz
    rm -R OpenVZ 
done

rm upgrade.sh

exit 0