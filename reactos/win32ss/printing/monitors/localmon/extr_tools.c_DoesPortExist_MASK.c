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
struct TYPE_4__ {int /*<<< orphan*/  pName; } ;
typedef  TYPE_1__* PPORT_INFO_1W ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC7(PCWSTR pwszPortName)
{
    BOOL bReturnValue = FALSE;
    DWORD cbNeeded;
    DWORD dwErrorCode;
    DWORD dwReturned;
    DWORD i;
    PPORT_INFO_1W p;
    PPORT_INFO_1W pPortInfo1 = NULL;

    // Determine the required buffer size.
    FUNC3(NULL, 1, NULL, 0, &cbNeeded, &dwReturned);
    if (FUNC4() != ERROR_INSUFFICIENT_BUFFER)
    {
        dwErrorCode = FUNC4();
        FUNC2("EnumPortsW failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    // Allocate a buffer large enough.
    pPortInfo1 = FUNC0(cbNeeded);
    if (!pPortInfo1)
    {
        dwErrorCode = ERROR_NOT_ENOUGH_MEMORY;
        FUNC2("DllAllocSplMem failed with error %lu!\n", FUNC4());
        goto Cleanup;
    }

    // Now get the actual port information.
    if (!FUNC3(NULL, 1, (PBYTE)pPortInfo1, cbNeeded, &cbNeeded, &dwReturned))
    {
        dwErrorCode = FUNC4();
        FUNC2("EnumPortsW failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }

    // We were successful! Loop through all returned ports.
    dwErrorCode = ERROR_SUCCESS;
    p = pPortInfo1;

    for (i = 0; i < dwReturned; i++)
    {
        // Check if this existing port matches our queried one.
        if (FUNC6(p->pName, pwszPortName) == 0)
        {
            bReturnValue = TRUE;
            goto Cleanup;
        }

        p++;
    }

Cleanup:
    if (pPortInfo1)
        FUNC1(pPortInfo1);

    FUNC5(dwErrorCode);
    return bReturnValue;
}