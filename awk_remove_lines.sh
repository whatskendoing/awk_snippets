# Removes First and Last line
awk -F\, 'NR>2 {print last} {last=$0}'

# Delete blank lines
awk NF
