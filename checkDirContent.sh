#!/bin/bash

#get the directory

DIR=$1
counter=1

#check if the directory exist

if [ ! -d $DIR ]; then
       echo "$DIR not available"
fi      
#print the header with printf

printf "==============================================================================================================\n"
printf "%-100s %s\n" "Name" "Type"
printf "==============================================================================================================\n"

#check the content of directory

echo ""
for items in $DIR/*; do
	if [ -d $items ]; then
		#echo -e "$items:: \t\t\t\t is a diectory"
		printf "%-100s is a directory\n\n" "$counter: $items"
	elif [ -f $items ]; then
		printf "%-100s is a file\n\n" "$counter: $items"
		#echo -e "$items:: \t\t\t\t is a file"
	else
		printf "%-100s is not available\n\n" "$counter: $items"
		#echo -e  "$items:: \t\t\t\t  not available"
	fi
	counter=$((counter + 1))
done	
