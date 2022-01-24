#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int GrantedAccess; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PLOCALMON_XCV ;
typedef  scalar_t__* PDWORD ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int SERVER_ACCESS_ADMINISTER ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD
FUNC8(PLOCALMON_XCV pXcv, PBYTE pInputData, PDWORD pcbOutputNeeded)
{
    DWORD cbBuffer;
    DWORD dwErrorCode;
    HKEY hKey = NULL;
    HKEY hToken = NULL;

    // Sanity checks
    if (!pXcv || !pInputData || !pcbOutputNeeded)
    {
        dwErrorCode = ERROR_INVALID_PARAMETER;
        goto Cleanup;
    }

    *pcbOutputNeeded = 0;

    // This action can only happen at SERVER_ACCESS_ADMINISTER access level.
    if (!(pXcv->GrantedAccess & SERVER_ACCESS_ADMINISTER))
    {
        dwErrorCode = ERROR_ACCESS_DENIED;
        goto Cleanup;
    }

    // Switch to the SYSTEM context for modifying the registry.
    hToken = FUNC6();
    if (!hToken)
    {
        dwErrorCode = FUNC1();
        FUNC0("RevertToPrinterSelf failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    // Open the key where our value is stored.
    dwErrorCode = (DWORD)FUNC4(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Windows", 0, KEY_SET_VALUE, &hKey);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC0("RegOpenKeyExW failed with status %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    // We don't use cbInputData here, because the buffer pInputData could be bigger than the data it contains.
    cbBuffer = (FUNC7((PWSTR)pInputData) + 1) * sizeof(WCHAR);

    // Write the value to the registry.
    dwErrorCode = (DWORD)FUNC5(hKey, L"TransmissionRetryTimeout", 0, REG_SZ, pInputData, cbBuffer);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC0("RegSetValueExW failed with status %lu!\n", dwErrorCode);
        goto Cleanup;
    }

Cleanup:
    if (hKey)
        FUNC3(hKey);

    if (hToken)
        FUNC2(hToken);

    return dwErrorCode;
}