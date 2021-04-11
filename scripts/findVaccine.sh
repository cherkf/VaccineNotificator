#!/usr/bin/env bash

#Script for CVS availability in all cities in MN except Mankato
result="$(/usr/bin/curl -X GET 'https://www.cvs.com/immunizations/covid-19-vaccine.vaccine-status.json?vaccineinfo=' -H 'cache-control: no-cache' | /usr/local/bin/jq -r '.responsePayloadData.data.MN[] | select ((.city != "MANKATO") and (.status == "Available"))')"
now="$(date +"%r")"
if [ -n "$result" ];
#Update email
then echo "This is the time $now $result" | /usr/bin/mail -s "CVS Covid Vaccine Available" -F fiwiya4818@whyflkj.com;#EMAIL
#Additional log
echo "This is the time $now $result"
else echo Nothing changed "$result";
fi
