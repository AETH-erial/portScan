####POWERSHELL###
###build script that adds the command to your powershell profile so that you
##can run the command as a normal command from the shell 'portScan'

$env = '$PsHome\Microsoft.PowerShell_profile.ps1'
$command = Get-Content -Path "$pwd\portScan.ps1"
$env.append($command)
