#!/bin/bash

while getopts ":o:d:e:t:" optname
do 
	case "$optname" in
		"o")
			OPERATION=$OPTARG
		;;
		"d")
			DIR=$OPTARG
		;;
		"e")
			TAG_EXT=$OPTARG
		;;
		"t")
			TAG=$OPTARG
		;;
	esac
done 

if [ -z "$DIR" ]; then 
	DIR=$PWD 
fi 

echo $TAG
if [ $OPERATION == 'forcetag' ]; then 
	FILES=$(find $DIR -type f)
	for f in $FILES
	do
		FN=$(basename "$f")
		EXT="${FN##*.}"
		if [ $EXT == "cls" ] || [ $EXT == "trigger" ] || [ $EXT == "page" ] ; then 
	  		tag --add $TAG $f
	  	fi
	done
fi 

if [ $OPERATION == "supertag" ]; then 
	FILES=$(find $DIR -type f)
	for f in $FILES 
	do 
		FN=$(basename "$f")
		EXT="${FN##*.}"
		echo $EXT
		if [ $EXT == $TAG_EXT ]; then 
			tag --add $TAG $f 
		fi 
	done 
fi 