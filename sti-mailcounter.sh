#!/bin/bash

set -e

local_storage=
web_directory=

offlineimap -c "$local_storage/.offlineimaprc"

count=$(find "$local_storage/INBOX" -type f | wc -l)

echo "{ 'count' : $count }" > "$web_directory/counter/count.json"
