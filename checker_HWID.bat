@echo off
title L3GION's HWID Serial Checker
color 6
echo [92mDisk
echo [92m------------[91m
wmic diskdrive get serialnumber
echo [92mMotherboard
echo [92m------------[91m
wmic baseboard get serialnumber
echo [92mSMBios
echo [92m------------[91m
wmic path win32_computersystemproduct get uuid
echo [92mGPU
echo [92m------------[91m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo [92mRAM
echo [92m------------[91m
wmic memorychip get serialnumber
echo [92mBios
echo [92m------------[91m
wmic csproduct get uuid
echo [92mCPU
echo [92m------------[91m
wmic cpu get processorid
echo [92mMac
echo [92m------------[91m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
pause
echo Diskdrive:
wmic diskdrive get serialnumber
echo Baseboard:
wmic baseboard get serialnumber
echo Cpu:
wmic cpu get serialnumber
echo Bios:
wmic bios get serialnumber
echo Ram:
wmic MEMORYCHIP get serialnumber
