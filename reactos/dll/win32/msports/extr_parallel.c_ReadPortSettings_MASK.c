#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int dwFilterResourceMethod; scalar_t__ dwLegacy; scalar_t__ szPortName; int /*<<< orphan*/  DeviceInfoData; int /*<<< orphan*/  DeviceInfoSet; scalar_t__ dwPortNumber; } ;
typedef  TYPE_1__* PPORT_DATA ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DICS_FLAG_GLOBAL ; 
 int /*<<< orphan*/  DIREG_DEV ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 

__attribute__((used)) static
VOID
FUNC6(
    PPORT_DATA pPortData)
{
    DWORD dwSize;
    HKEY hKey;
    DWORD dwError;

    FUNC5("ReadPortSettings(%p)\n", pPortData);

    pPortData->dwFilterResourceMethod = 1; /* Never use an interrupt */
    pPortData->dwLegacy = 0;               /* Disabled */
    pPortData->dwPortNumber = 0;           /* Unknown */

    hKey = FUNC4(pPortData->DeviceInfoSet,
                                pPortData->DeviceInfoData,
                                DICS_FLAG_GLOBAL,
                                0,
                                DIREG_DEV,
                                KEY_READ);
    if (hKey != INVALID_HANDLE_VALUE)
    {
        dwSize = sizeof(pPortData->szPortName);
        dwError = FUNC3(hKey,
                                   L"PortName",
                                   NULL,
                                   NULL,
                                  (PBYTE)pPortData->szPortName,
                                  &dwSize);
        if (dwError != ERROR_SUCCESS)
        {
            FUNC0("RegQueryValueExW failed (Error %lu)\n", dwError);
        }

        dwSize = sizeof(pPortData->dwFilterResourceMethod);
        dwError = FUNC3(hKey,
                                   L"FilterResourceMethod",
                                   NULL,
                                   NULL,
                                   (PBYTE)&pPortData->dwFilterResourceMethod,
                                   &dwSize);
        if (dwError != ERROR_SUCCESS)
        {
            FUNC0("RegQueryValueExW failed (Error %lu)\n", dwError);
        }

        FUNC1(hKey);
    }

    dwError = FUNC2(HKEY_LOCAL_MACHINE,
                            L"SYSTEM\\CurrentControlSet\\Services\\Parport\\Parameters",
                            0,
                            KEY_READ,
                            &hKey);
    if (dwError == ERROR_SUCCESS)
    {
        dwSize = sizeof(pPortData->dwLegacy);
        dwError = FUNC3(hKey,
                                   L"ParEnableLegacyZip",
                                   NULL,
                                   NULL,
                                   (PBYTE)&pPortData->dwLegacy,
                                   &dwSize);
        if (dwError != ERROR_SUCCESS)
        {
            FUNC0("RegQueryValueExW failed (Error %lu)\n", dwError);
        }

        FUNC1(hKey);
    }
}