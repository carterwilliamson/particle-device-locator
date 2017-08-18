#!/bin/sh
API="YOUR_API_KEY_HERE"
if [ -z "$API_KEY" ]
	then
	if [ -z "$1" ]
		then
		echo "Need to set API_KEY env. or pass API key as arg."; exit 1;
	else
		API="$1"
	fi
else
	API="$API_KEY"
fi

sed -i -e "s/YOUR_API_KEY_HERE/${API}/g" ./config.json
rm ./config.json-e