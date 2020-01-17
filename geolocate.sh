#!/bin/sh

geolocate="$(curl ipinfo.io/ 2>/dev/null)"
<<<"$geolocate" awk -F'"' '$2=="city"{printf("%s, ", "Region: "$4)}$2=="region"{print $4}$2=="country"{print "Country: "$4}$2=="loc"{print "Location: "$4}'
