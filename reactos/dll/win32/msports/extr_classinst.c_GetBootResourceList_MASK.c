#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  PSP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/ * PCM_RESOURCE_LIST ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  HDEVINFO ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

BOOL
FUNC10(HDEVINFO DeviceInfoSet,
                    PSP_DEVINFO_DATA DeviceInfoData,
                    PCM_RESOURCE_LIST *ppResourceList)
{
    WCHAR DeviceInstanceIdBuffer[128];
    HKEY hEnumKey = NULL;
    HKEY hDeviceKey = NULL;
    HKEY hConfigKey = NULL;
    LPBYTE lpBuffer = NULL;
    DWORD dwDataSize;
    LONG lError;
    BOOL ret = FALSE;

    FUNC2("GetBootResourceList()\n");

    *ppResourceList = NULL;

    if (!FUNC9(DeviceInfoSet,
                                     DeviceInfoData,
                                     DeviceInstanceIdBuffer,
                                     FUNC0(DeviceInstanceIdBuffer),
                                     &dwDataSize))
    {
        FUNC1("SetupDiGetDeviceInstanceIdW() failed\n");
        return FALSE;
    }

    lError = FUNC7(HKEY_LOCAL_MACHINE,
                           L"SYSTEM\\CurrentControlSet\\Enum",
                           0,
                           KEY_QUERY_VALUE,
                           &hEnumKey);
    if (lError != ERROR_SUCCESS)
    {
        FUNC1("RegOpenKeyExW() failed (Error %lu)\n", lError);
        goto done;
    }

    lError = FUNC7(hEnumKey,
                           DeviceInstanceIdBuffer,
                           0,
                           KEY_QUERY_VALUE,
                           &hDeviceKey);
    if (lError != ERROR_SUCCESS)
    {
        FUNC1("RegOpenKeyExW() failed (Error %lu)\n", lError);
        goto done;
    }

    lError = FUNC7(hDeviceKey,
                           L"LogConf",
                           0,
                           KEY_QUERY_VALUE,
                           &hConfigKey);
    if (lError != ERROR_SUCCESS)
    {
        FUNC1("RegOpenKeyExW() failed (Error %lu)\n", lError);
        goto done;
    }

    /* Get the configuration data size */
    lError = FUNC8(hConfigKey,
                              L"BootConfig",
                              NULL,
                              NULL,
                              NULL,
                              &dwDataSize);
    if (lError != ERROR_SUCCESS)
    {
        FUNC1("RegQueryValueExW() failed (Error %lu)\n", lError);
        goto done;
    }

    /* Allocate the buffer */
    lpBuffer = FUNC4(FUNC3(), 0, dwDataSize);
    if (lpBuffer == NULL)
    {
        FUNC1("Failed to allocate the resource list buffer\n");
        goto done;
    }

    /* Retrieve the configuration data */
    lError = FUNC8(hConfigKey,
                              L"BootConfig",
                              NULL,
                              NULL,
                             (LPBYTE)lpBuffer,
                              &dwDataSize);
    if (lError == ERROR_SUCCESS)
    {
        FUNC1("RegQueryValueExW() failed (Error %lu)\n", lError);
        ret = TRUE;
    }

done:
    if (ret == FALSE && lpBuffer != NULL)
        FUNC5(FUNC3(), 0, lpBuffer);

    if (hConfigKey)
        FUNC6(hConfigKey);

    if (hDeviceKey)
        FUNC6(hDeviceKey);

    if (hEnumKey)
        FUNC6(hEnumKey);

    if (ret != FALSE)
        *ppResourceList = (PCM_RESOURCE_LIST)lpBuffer;

    return ret;
}