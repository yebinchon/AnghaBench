#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINSPOOL_HANDLE ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  cbStructureSize; int /*<<< orphan*/  pInfo; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_1__ DatatypesInfo1Marshalling ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

DWORD
FUNC8(WINSPOOL_HANDLE pName, WCHAR* pPrintProcessorName, DWORD Level, BYTE* pDatatypes, DWORD cbBuf, DWORD* pcbNeeded, DWORD* pcReturned)
{
    DWORD dwErrorCode;
    PBYTE pDatatypesAligned;

    dwErrorCode = FUNC5(NULL);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC1("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pDatatypesAligned = FUNC0(pDatatypes, &cbBuf);

    if (FUNC2(pName, pPrintProcessorName, Level, pDatatypesAligned, cbBuf, pcbNeeded, pcReturned))
    {
        // Replace absolute pointer addresses in the output by relative offsets.
        FUNC4(pDatatypesAligned, *pcReturned, DatatypesInfo1Marshalling.pInfo, DatatypesInfo1Marshalling.cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = FUNC3();
    }

    FUNC6();
    FUNC7(pDatatypes, pDatatypesAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}