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
typedef  int /*<<< orphan*/  szDosDeviceName ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int* PDWORD ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
VOID
FUNC9(
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

    dwError = FUNC3(HKEY_LOCAL_MACHINE,
                            L"Hardware\\DeviceMap\\PARALLEL PORTS",
                            0,
                            KEY_READ,
                            &hKey);
    if (dwError == ERROR_SUCCESS)
    {
        for (dwIndex = 0; ; dwIndex++)
        {
            dwDeviceNameSize = FUNC0(szDeviceName);
            dwDosDeviceNameSize = sizeof(szDosDeviceName);
            dwError = FUNC2(hKey,
                                    dwIndex,
                                    szDeviceName,
                                    &dwDeviceNameSize,
                                    NULL,
                                    &dwType,
                                    (LPBYTE)szDosDeviceName,
                                    &dwDosDeviceNameSize);
            if (dwError != ERROR_SUCCESS)
                break;

            if (dwType == REG_SZ)
            {
                FUNC4("%S --> %S\n", szDeviceName, szDosDeviceName);
                if (FUNC5(szDosDeviceName, L"\\DosDevices\\LPT", FUNC7(L"\\DosDevices\\LPT")) == 0)
                {
                     ptr = szDosDeviceName + FUNC7(L"\\DosDevices\\LPT");
                     if (FUNC6(ptr, L'.') == NULL)
                     {
                         FUNC4("Device number %S\n", ptr);
                         dwPortNumber = FUNC8(ptr, NULL, 10);
                         if (dwPortNumber != 0)
                         {
                             *pPortMap |=(1 << dwPortNumber);
                         }
                     }
                }
            }
        }

        FUNC1(hKey);
    }

    FUNC4("Done\n");
}