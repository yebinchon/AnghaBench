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
typedef  int /*<<< orphan*/  WINSPOOL_PRINTER_HANDLE ;
struct TYPE_2__ {int /*<<< orphan*/  cbStructureSize; int /*<<< orphan*/  pInfo; } ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 TYPE_1__** pPrinterInfoMarshalling ; 

DWORD
FUNC9(WINSPOOL_PRINTER_HANDLE hPrinter, DWORD Level, BYTE* pPrinter, DWORD cbBuf, DWORD* pcbNeeded)
{
    DWORD dwErrorCode;
    PBYTE pPrinterAligned;

    dwErrorCode = FUNC6(NULL);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC2("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pPrinterAligned = FUNC1(pPrinter, &cbBuf);

    if (FUNC4(hPrinter, Level, pPrinterAligned, cbBuf, pcbNeeded))
    {
        // Replace absolute pointer addresses in the output by relative offsets.
        FUNC0(Level <= 9);
        FUNC5(pPrinterAligned, pPrinterInfoMarshalling[Level]->pInfo, pPrinterInfoMarshalling[Level]->cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = FUNC3();
    }

    FUNC7();
    FUNC8(pPrinter, pPrinterAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}