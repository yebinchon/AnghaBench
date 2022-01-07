
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szDosDeviceName ;
typedef int WCHAR ;
typedef int VOID ;
typedef int * PWSTR ;
typedef int* PDWORD ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ARRAYSIZE (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,int *,scalar_t__*,int *,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 int TRACE (char*,...) ;
 scalar_t__ _wcsnicmp (int *,char*,int) ;
 int * wcschr (int *,int) ;
 int wcslen (char*) ;
 scalar_t__ wcstoul (int *,int *,int) ;

__attribute__((used)) static
VOID
GetUsedPorts(
    PDWORD pPortMap)
{
    WCHAR szDeviceName[64];
    WCHAR szDosDeviceName[64];
    DWORD dwIndex, dwType, dwPortNumber;
    DWORD dwDeviceNameSize, dwDosDeviceNameSize;
    PWSTR ptr;
    HKEY hKey;
    DWORD dwError;

    *pPortMap = 0;

    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            L"Hardware\\DeviceMap\\PARALLEL PORTS",
                            0,
                            KEY_READ,
                            &hKey);
    if (dwError == ERROR_SUCCESS)
    {
        for (dwIndex = 0; ; dwIndex++)
        {
            dwDeviceNameSize = ARRAYSIZE(szDeviceName);
            dwDosDeviceNameSize = sizeof(szDosDeviceName);
            dwError = RegEnumValueW(hKey,
                                    dwIndex,
                                    szDeviceName,
                                    &dwDeviceNameSize,
                                    ((void*)0),
                                    &dwType,
                                    (LPBYTE)szDosDeviceName,
                                    &dwDosDeviceNameSize);
            if (dwError != ERROR_SUCCESS)
                break;

            if (dwType == REG_SZ)
            {
                TRACE("%S --> %S\n", szDeviceName, szDosDeviceName);
                if (_wcsnicmp(szDosDeviceName, L"\\DosDevices\\LPT", wcslen(L"\\DosDevices\\LPT")) == 0)
                {
                     ptr = szDosDeviceName + wcslen(L"\\DosDevices\\LPT");
                     if (wcschr(ptr, L'.') == ((void*)0))
                     {
                         TRACE("Device number %S\n", ptr);
                         dwPortNumber = wcstoul(ptr, ((void*)0), 10);
                         if (dwPortNumber != 0)
                         {
                             *pPortMap |=(1 << dwPortNumber);
                         }
                     }
                }
            }
        }

        RegCloseKey(hKey);
    }

    TRACE("Done\n");
}
