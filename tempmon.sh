#!/bin/zsh

printf "%-15s%5s\n" "Tempmon coded by Baselifter"
printf "%-15s%5s\n" "TIMESTAMP" "TEMP(GradC)"
printf "%20s\n" "--------------------"

while true 
do
	temp=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
	timestamp=$(date +'%s')
	printf "%-15s%5s\n" "$timestamp" "$temp"
	sleep 2
done
