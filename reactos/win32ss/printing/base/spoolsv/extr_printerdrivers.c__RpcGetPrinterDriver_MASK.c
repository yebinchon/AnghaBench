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
typedef  int /*<<< orphan*/  WCHAR ;
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
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 TYPE_1__** pPrinterDriverMarshalling ; 

DWORD
FUNC9(WINSPOOL_PRINTER_HANDLE hPrinter, WCHAR* pEnvironment, DWORD Level, BYTE* pDriver, DWORD cbBuf, DWORD* pcbNeeded)
{
    DWORD dwErrorCode;
    PBYTE pDriverAligned;

    dwErrorCode = FUNC6(NULL);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC2("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pDriverAligned = FUNC1(pDriver, &cbBuf);

    if (FUNC4(hPrinter, pEnvironment, Level, pDriverAligned, cbBuf, pcbNeeded))
    {
        // Replace relative offset addresses in the output by absolute pointers.
        FUNC0(Level >= 1 && Level <= 3);
        FUNC5(pDriverAligned, pPrinterDriverMarshalling[Level]->pInfo, pPrinterDriverMarshalling[Level]->cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = FUNC3();
    }

    FUNC7();
    FUNC8(pDriver, pDriverAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}