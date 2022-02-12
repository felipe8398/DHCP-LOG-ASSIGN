$IP=$args[1]
write-host "Buscando pelo IP/RANGE/Nome da máquina: $IP"
Get-Content C:\Windows\System32\dhcp\DhcpSrvLog-*.log | Where-Object {$_ -like '*assign*'} | select-string $IP | ConvertFrom-Csv -Header ID,Data, Hora, Ação, IP, Maquina | Format-Table -Autosize
