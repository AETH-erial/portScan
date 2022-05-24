##portScan

function portScan {
    param (
        [Parameter(Mandatory=$true,
        ValueFromPipeline = $true)]
        [string] $targetIP
    )
    
    $openPorts = @{}
$targetIP = Read-Host "Enter Target "
$targetIP|portScan
    
    $ports = (20, 21, 22, 25 ,53, 80, 123, 179, 443, 500, 3389)
    foreach($port in $ports){
    
        $portTest = (Test-Connection $targetIP -TcpPort $port)

    if($portTest -eq "True"){

        $openPorts["$port"] = "Open"
    }else{

        $openPorts["$port"] = "Closed"
    }

}
Write-Output $openPorts
}
