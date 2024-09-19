disabler.ps1
Written By: Ariel Villanueva Jr
11 September 2024 

Syntax: 

.\disabler.ps1

Purpose:

disabler.ps1 is a PowerShell script designed to disable unnecessary ports as recommended by the Center for Internet Security in their CIS_Microsoft_Windows_11_Enterprise_Benchmark_v3.0.0.pdf found at: ( https://downloads.cisecurity.org/#/ ). The script iterates thru a list of services, as listed below in Targets, and sets their Start value to 4, disabling them. If the service is not installed on the machine it will report as not found.  

Targets:

1. 'Bluetooth Audio Gateway Service (BTAGService)'
2. 'Bluetooth Support Service (bthserv)'
3. 'Computer Browser (Browser)'
4. 'Downloaded Maps Manager (MapsBroker)'
5. 'Geolocation Service (lfsvc)'
6. 'IIS Admin Service (IISADMIN)'
7. 'Infrared monitor service (irmon)'
8. 'Link-Layer Topology Discovery Mapper (lltdsvc)' 
9. 'LxssManager (LxssManager)'
10. 'Microsoft FTP Service (FTPSVC)'
11. 'Microsoft iSCSI Initiator Service (MSiSCSI)'
12. 'OpenSSH SSH Server (sshd)'
13. 'Peer Name Resolution Protocol (PNRPsvc)'
14. 'Peer Networking Grouping (p2psvc)'
15. 'Peer Networking Identity Manager (p2pimsvc)'
16. 'PNRP Machine Name Publication Service (PNRPAutoReg)'
17. 'Print Spooler (Spooler)'
18. 'Problem Reports and Solutions Control Panel Support (wercplsupport)'
19. 'Remote Access Auto Connection Manager (RasAuto)'
20. 'Remote Desktop Configuration (SessionEnv)'
21. 'Remote Desktop Services (TermService)'
22. 'Remote Desktop Services UserMode Port Redirector (UmRdpService)'
23. 'Remote Procedure Call (RPC) Locator (RpcLocator)'
24. 'Remote Registry (RemoteRegistry)' is set to 'Disabled'
25. 'Routing and Remote Access (RemoteAccess)'
26. 'Server (LanmanServer)'
27. 'Simple TCP/IP Services (simptcp)'
28. 'SNMP Service (SNMP)'
29. 'Special Administration Console Helper (sacsvr)'
30. 'SSDP Discovery (SSDPSRV)'
31. 'UPnP Device Host (upnphost)'
32. 'Web Management Service (WMSvc)'
33. 'Windows Error Reporting Service (WerSvc)' 
34. 'Windows Event Collector (Wecsvc)'
35. 'Windows Media Player Network Sharing Service (WMPNetworkSvc)'
36. 'Windows Mobile Hotspot Service (icssvc)'
37. 'Windows Push Notifications System Service (WpnService)'
38. 'Windows PushToInstall Service (PushToInstall)'
39. 'Windows Remote Management (WS-Management) (WinRM)'
40. 'World Wide Web Publishing Service (W3SVC)'
41. 'Xbox Accessory Management Service (XboxGipSvc)'
42. 'Xbox Live Auth Manager (XblAuthManager)'
43. 'Xbox Live Game Save (XblGameSave)'
44. 'Xbox Live Networking Service (XboxNetApiSvc)'


Example Output:

HKLM:\SYSTEM\CurrentControlSet\Services\BTAGService has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\bthserv has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\Browser not found.
HKLM:\SYSTEM\CurrentControlSet\Services\MapsBroker has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\IISADMIN not found.
HKLM:\SYSTEM\CurrentControlSet\Services\irmon not found.
HKLM:\SYSTEM\CurrentControlSet\Services\lltdsvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\LxssManager not found.
HKLM:\SYSTEM\CurrentControlSet\Services\FTPSVC not found.
HKLM:\SYSTEM\CurrentControlSet\Services\MSiSCSI has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\sshd not found.
HKLM:\SYSTEM\CurrentControlSet\Services\PNRPsvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\p2psvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\p2pimsvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\PNRPAutoReg has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\Spooler has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\wercplsupport has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\RasAuto has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\SessionEnv has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\TermService has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\UmRdpService has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\RpcLocator has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\simptcp not found.
HKLM:\SYSTEM\CurrentControlSet\Services\SNMP not found.
HKLM:\SYSTEM\CurrentControlSet\Services\sacsvr not found.
HKLM:\SYSTEM\CurrentControlSet\Services\SSDPSRV has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\upnphost has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\WMSvc not found.
HKLM:\SYSTEM\CurrentControlSet\Services\WerSvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\Wecsvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\icssvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\WpnService has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\PushToInstall has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\WinRM has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\W3SVC not found.
HKLM:\SYSTEM\CurrentControlSet\Services\XboxGipSvc has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\XblAuthManager has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\XblGameSave has been disabled.
HKLM:\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc has been disabled.
