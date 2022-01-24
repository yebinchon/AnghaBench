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
typedef  int /*<<< orphan*/  WINSPOOL_PRINTER_HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 

DWORD
FUNC5(WINSPOOL_PRINTER_HANDLE hPrinter, BYTE* pBuf, DWORD cbBuf, DWORD* pcWritten)
{
    DWORD dwErrorCode;

    dwErrorCode = FUNC2(NULL);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC0("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    if (!FUNC4(hPrinter, pBuf, cbBuf, pcWritten))
        dwErrorCode = FUNC1();

    FUNC3();
    return dwErrorCode;
}