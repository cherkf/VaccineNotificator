# VaccineNotificator
Script to send email notifications when a Covid vaccine is available.

# To run the script:

## Add Crontab

 ``` crontab -e ```
 
 The following example will run the script every 1 min:
 
 ``` */1 * * * * /VaccineNotificator/scripts/findVaccine.sh >> /tmp/log.txt ```
 

