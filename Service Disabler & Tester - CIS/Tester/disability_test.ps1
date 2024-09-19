# List of registry paths for services to check
$registryPaths = @(
    "HKLM:\SYSTEM\CurrentControlSet\Services\BTAGService",
    "HKLM:\SYSTEM\CurrentControlSet\Services\bthserv",
    "HKLM:\SYSTEM\CurrentControlSet\Services\Browser",
    "HKLM:\SYSTEM\CurrentControlSet\Services\MapsBroker",
    "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\IISADMIN",
    "HKLM:\SYSTEM\CurrentControlSet\Services\irmon",
    "HKLM:\SYSTEM\CurrentControlSet\Services\lltdsvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\LxssManager",
    "HKLM:\SYSTEM\CurrentControlSet\Services\FTPSVC",
    "HKLM:\SYSTEM\CurrentControlSet\Services\MSiSCSI",
    "HKLM:\SYSTEM\CurrentControlSet\Services\sshd",
    "HKLM:\SYSTEM\CurrentControlSet\Services\PNRPsvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\p2psvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\p2pimsvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\PNRPAutoReg",
    "HKLM:\SYSTEM\CurrentControlSet\Services\Spooler",
    "HKLM:\SYSTEM\CurrentControlSet\Services\wercplsupport",
    "HKLM:\SYSTEM\CurrentControlSet\Services\RasAuto",
    "HKLM:\SYSTEM\CurrentControlSet\Services\SessionEnv",
    "HKLM:\SYSTEM\CurrentControlSet\Services\TermService",
    "HKLM:\SYSTEM\CurrentControlSet\Services\UmRdpService",
    "HKLM:\SYSTEM\CurrentControlSet\Services\RpcLocator",
    "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry",
    "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess",
    "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer",
    "HKLM:\SYSTEM\CurrentControlSet\Services\simptcp",
    "HKLM:\SYSTEM\CurrentControlSet\Services\SNMP",
    "HKLM:\SYSTEM\CurrentControlSet\Services\sacsvr",
    "HKLM:\SYSTEM\CurrentControlSet\Services\SSDPSRV",
    "HKLM:\SYSTEM\CurrentControlSet\Services\upnphost",
    "HKLM:\SYSTEM\CurrentControlSet\Services\WMSvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\WerSvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\Wecsvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\icssvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\WpnService",
    "HKLM:\SYSTEM\CurrentControlSet\Services\PushToInstall",
    "HKLM:\SYSTEM\CurrentControlSet\Services\WinRM",
    "HKLM:\SYSTEM\CurrentControlSet\Services\W3SVC",
    "HKLM:\SYSTEM\CurrentControlSet\Services\XboxGipSvc",
    "HKLM:\SYSTEM\CurrentControlSet\Services\XblAuthManager",
    "HKLM:\SYSTEM\CurrentControlSet\Services\XblGameSave",
    "HKLM:\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc"
)


# Iterate over each registry path and check if the service is disabled
foreach ($regPath in $registryPaths) {
    # Check if the registry path exists
    if (Test-Path $regPath) {
        # Get the 'Start' value for the service
        $startValue = Get-ItemProperty -Path $regPath -Name "Start"

        # Check if the service is disabled (Start = 4)
        if ($startValue.Start -eq 4) {
            Write-Output "$regPath is disabled."
        } else {
            Write-Output "$regPath is NOT disabled. Start value: $($startValue.Start)"
        }
    } else {
        Write-Output "$regPath not found."
    }
}
