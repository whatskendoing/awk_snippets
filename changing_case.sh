#!/bin/bash

# Logged in User
lowercase_LoggedInUser=$(/usr/bin/stat -f%Su /dev/console | /usr/bin/awk '{ print tolower ($1) }') 
uppercase_LoggedInUser=$(/usr/bin/stat -f%Su /dev/console | /usr/bin/awk '{ print toupper ($1) }')

    echo "$lowercase_LoggedInUser"
    echo "$uppercase_LoggedInUser"

exit 0
