
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int dwFilterResourceMethod; scalar_t__ dwLegacy; scalar_t__ szPortName; int DeviceInfoData; int DeviceInfoSet; scalar_t__ dwPortNumber; } ;
typedef TYPE_1__* PPORT_DATA ;
typedef int PBYTE ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;


 int DICS_FLAG_GLOBAL ;
 int DIREG_DEV ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KEY_READ ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,scalar_t__*) ;
 scalar_t__ RegQueryValueExW (scalar_t__,char*,int *,int *,int ,scalar_t__*) ;
 scalar_t__ SetupDiOpenDevRegKey (int ,int ,int ,int ,int ,int ) ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static
VOID
ReadPortSettings(
    PPORT_DATA pPortData)
{
    DWORD dwSize;
    HKEY hKey;
    DWORD dwError;

    TRACE("ReadPortSettings(%p)\n", pPortData);

    pPortData->dwFilterResourceMethod = 1;
    pPortData->dwLegacy = 0;
    pPortData->dwPortNumber = 0;

    hKey = SetupDiOpenDevRegKey(pPortData->DeviceInfoSet,
                                pPortData->DeviceInfoData,
                                DICS_FLAG_GLOBAL,
                                0,
                                DIREG_DEV,
                                KEY_READ);
    if (hKey != INVALID_HANDLE_VALUE)
    {
        dwSize = sizeof(pPortData->szPortName);
        dwError = RegQueryValueExW(hKey,
                                   L"PortName",
                                   ((void*)0),
                                   ((void*)0),
                                  (PBYTE)pPortData->szPortName,
                                  &dwSize);
        if (dwError != ERROR_SUCCESS)
        {
            ERR("RegQueryValueExW failed (Error %lu)\n", dwError);
        }

        dwSize = sizeof(pPortData->dwFilterResourceMethod);
        dwError = RegQueryValueExW(hKey,
                                   L"FilterResourceMethod",
                                   ((void*)0),
                                   ((void*)0),
                                   (PBYTE)&pPortData->dwFilterResourceMethod,
                                   &dwSize);
        if (dwError != ERROR_SUCCESS)
        {
            ERR("RegQueryValueExW failed (Error %lu)\n", dwError);
        }

        RegCloseKey(hKey);
    }

    dwError = RegOpenKeyExW(HKEY_LOCAL_MACHINE,
                            L"SYSTEM\\CurrentControlSet\\Services\\Parport\\Parameters",
                            0,
                            KEY_READ,
                            &hKey);
    if (dwError == ERROR_SUCCESS)
    {
        dwSize = sizeof(pPortData->dwLegacy);
        dwError = RegQueryValueExW(hKey,
                                   L"ParEnableLegacyZip",
                                   ((void*)0),
                                   ((void*)0),
                                   (PBYTE)&pPortData->dwLegacy,
                                   &dwSize);
        if (dwError != ERROR_SUCCESS)
        {
            ERR("RegQueryValueExW failed (Error %lu)\n", dwError);
        }

        RegCloseKey(hKey);
    }
}
