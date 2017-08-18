#!/bin/sh
[ -z "$API_KEY" ] && { echo "Need to set API_KEY"; exit 1; }
sed -i -e "s/YOUR_API_KEY_HERE/${API_KEY}/g" ./config.json