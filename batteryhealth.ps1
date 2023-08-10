If (-Not (Test-Path "C:\Program Files\Zabbix Agent 2\bin\temp")){
	New-Item -Path "C:\Program Files\Zabbix Agent 2\bin" -Name "temp" -ItemType "directory"
}

& powercfg /batteryreport /XML /OUTPUT "C:\Program Files\Zabbix Agent 2\bin\temp\batteryreport.xml" | Out-Null
Start-Sleep 1
[xml]$Report = Get-Content "C:\Program Files\Zabbix Agent 2\bin\temp\batteryreport.xml"

if ($Report.BatteryReport.Batteries -ne "" ){
	$Report.BatteryReport.Batteries.Battery | Select-Object Id,Manufacturer,SerialNumber,ManufactureDate,Chemistry,LongTerm,RelativeCapacity,DesignCapacity,FullChargeCapacity,CycleCount | ConvertTo-Json
}
