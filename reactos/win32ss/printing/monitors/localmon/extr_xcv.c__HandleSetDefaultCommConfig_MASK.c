#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dwSize; } ;
struct TYPE_5__ {int GrantedAccess; int /*<<< orphan*/ * pwszObject; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_1__* PLOCALMON_XCV ;
typedef  scalar_t__* PDWORD ;
typedef  scalar_t__ PBYTE ;
typedef  TYPE_2__* LPCOMMCONFIG ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int SERVER_ACCESS_ADMINISTER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD
FUNC7(PLOCALMON_XCV pXcv, PBYTE pInputData, PDWORD pcbOutputNeeded)
{
    DWORD dwErrorCode;
    HANDLE hToken = NULL;
    LPCOMMCONFIG pCommConfig;
    PWSTR pwszPortNameWithoutColon = NULL;

    // Sanity checks
    // pwszObject needs to be at least 2 characters long to be a port name with a trailing colon.
    if (!pXcv || !pXcv->pwszObject || !pXcv->pwszObject[0] || !pXcv->pwszObject[1] || !pInputData || !pcbOutputNeeded)
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

    // SetDefaultCommConfigW needs the port name without colon.
    dwErrorCode = FUNC3(pXcv->pwszObject, &pwszPortNameWithoutColon);
    if (dwErrorCode != ERROR_SUCCESS)
        goto Cleanup;

    // Switch to the SYSTEM context for setting the port configuration.
    hToken = FUNC5();
    if (!hToken)
    {
        dwErrorCode = FUNC2();
        FUNC1("RevertToPrinterSelf failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    // Finally pass the parameters to SetDefaultCommConfigW.
    pCommConfig = (LPCOMMCONFIG)pInputData;
    if (!FUNC6(pwszPortNameWithoutColon, pCommConfig, pCommConfig->dwSize))
    {
        dwErrorCode = FUNC2();
        FUNC1("SetDefaultCommConfigW failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    dwErrorCode = ERROR_SUCCESS;

Cleanup:
    if (hToken)
        FUNC4(hToken);

    if (pwszPortNameWithoutColon)
        FUNC0(pwszPortNameWithoutColon);

    return dwErrorCode;
}