#!/bin/bash
#A script to return youtube channel id in stdout
channelid=`w3m -dump_source $1 | gunzip -f | grep "itemprop=\"channelId\"" | sed 's/.*"\(.*\)"[^"]*$/\1/'`
echo $channelid

echo "https://www.youtube.com/feeds/videos.xml?channel_id=${channelid}" 
