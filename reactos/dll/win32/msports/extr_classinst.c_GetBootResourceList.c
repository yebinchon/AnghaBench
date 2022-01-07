
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int PSP_DEVINFO_DATA ;
typedef int * PCM_RESOURCE_LIST ;
typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef int HDEVINFO ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (char*) ;
 int ERR (char*,...) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int * HKEY_LOCAL_MACHINE ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExW (int *,char*,int ,int ,int **) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,int *,int *,int *) ;
 int SetupDiGetDeviceInstanceIdW (int ,int ,char*,int ,int *) ;
 scalar_t__ TRUE ;

BOOL
GetBootResourceList(HDEVINFO DeviceInfoSet,
                    PSP_DEVINFO_DATA DeviceInfoData,
                    PCM_RESOURCE_LIST *ppResourceList)
{
    WCHAR DeviceInstanceIdBuffer[128];
    HKEY hEnumKey = ((void*)0);
    HKEY hDeviceKey = ((void*)0);
    HKEY hConfigKey = ((void*)0);
    LPBYTE lpBuffer = ((void*)0);
    DWORD dwDataSize;
    LONG lError;
    BOOL ret = FALSE;

    FIXME("GetBootResourceList()\n");

    *ppResourceList = ((void*)0);

    if (!SetupDiGetDeviceInstanceIdW(DeviceInfoSet,
                                     DeviceInfoData,
                                     DeviceInstanceIdBuffer,
                                     ARRAYSIZE(DeviceInstanceIdBuffer),
                                     &dwDataSize))
    {
        ERR("SetupDiGetDeviceInstanceIdW() failed\n");
        return FALSE;
    }

    lError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                           L"SYSTEM\\CurrentControlSet\\Enum",
                           0,
                           KEY_QUERY_VALUE,
                           &hEnumKey);
    if (lError != ERROR_SUCCESS)
    {
        ERR("RegOpenKeyExW() failed (Error %lu)\n", lError);
        goto done;
    }

    lError = RegOpenKeyExW(hEnumKey,
                           DeviceInstanceIdBuffer,
                           0,
                           KEY_QUERY_VALUE,
                           &hDeviceKey);
    if (lError != ERROR_SUCCESS)
    {
        ERR("RegOpenKeyExW() failed (Error %lu)\n", lError);
        goto done;
    }

    lError = RegOpenKeyExW(hDeviceKey,
                           L"LogConf",
                           0,
                           KEY_QUERY_VALUE,
                           &hConfigKey);
    if (lError != ERROR_SUCCESS)
    {
        ERR("RegOpenKeyExW() failed (Error %lu)\n", lError);
        goto done;
    }


    lError = RegQueryValueExW(hConfigKey,
                              L"BootConfig",
                              ((void*)0),
                              ((void*)0),
                              ((void*)0),
                              &dwDataSize);
    if (lError != ERROR_SUCCESS)
    {
        ERR("RegQueryValueExW() failed (Error %lu)\n", lError);
        goto done;
    }


    lpBuffer = HeapAlloc(GetProcessHeap(), 0, dwDataSize);
    if (lpBuffer == ((void*)0))
    {
        ERR("Failed to allocate the resource list buffer\n");
        goto done;
    }


    lError = RegQueryValueExW(hConfigKey,
                              L"BootConfig",
                              ((void*)0),
                              ((void*)0),
                             (LPBYTE)lpBuffer,
                              &dwDataSize);
    if (lError == ERROR_SUCCESS)
    {
        ERR("RegQueryValueExW() failed (Error %lu)\n", lError);
        ret = TRUE;
    }

done:
    if (ret == FALSE && lpBuffer != ((void*)0))
        HeapFree(GetProcessHeap(), 0, lpBuffer);

    if (hConfigKey)
        RegCloseKey(hConfigKey);

    if (hDeviceKey)
        RegCloseKey(hDeviceKey);

    if (hEnumKey)
        RegCloseKey(hEnumKey);

    if (ret != FALSE)
        *ppResourceList = (PCM_RESOURCE_LIST)lpBuffer;

    return ret;
}
