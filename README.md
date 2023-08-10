# WindowsBattery-Zabbix
 
1. Import `Windows Battery Template 64.yaml` to your Zabbix Server
2. Copy `batteryhealth.conf` to `C:\program Files\Zabbix Agent 2\zabbix_agent2.d\plugins.d\batteryhealth.conf` and `batteryhealth.ps1` to `C:\program Files\Zabbix Agent 2\bin\batteryhealth.ps1`
3. Add the template to your hosts

Items:
 - Battery: Get attributes
 - Battery SerialNumber
 - Battery Relative Capacity
 - Battery Manufacturer
 - Battery ManufactureDate
 - Battery Long Term
 - Battery Id
 - Battery Full Charge Capacity
 - Battery Design Capacity
 - Battery Cycle Count
 - Battery Chemistry
