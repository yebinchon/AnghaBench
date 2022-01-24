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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

DWORD
FUNC4(WINSPOOL_PRINTER_HANDLE hPrinter, const WCHAR* pKeyName, const WCHAR* pValueName, DWORD Type, BYTE* pData, DWORD cbData)
{
    DWORD dwErrorCode;

    dwErrorCode = FUNC1(NULL);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC0("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    dwErrorCode = FUNC3(hPrinter, pKeyName, pValueName, Type, pData, cbData);

    FUNC2();

    return dwErrorCode;
}