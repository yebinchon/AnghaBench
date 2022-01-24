#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINSPOOL_PRINTER_HANDLE ;
struct TYPE_4__ {scalar_t__ pDocInfo1; } ;
struct TYPE_5__ {TYPE_1__ DocInfo; int /*<<< orphan*/  Level; } ;
typedef  TYPE_2__ WINSPOOL_DOC_INFO_CONTAINER ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DWORD
FUNC5(WINSPOOL_PRINTER_HANDLE hPrinter, WINSPOOL_DOC_INFO_CONTAINER* pDocInfoContainer, DWORD* pJobId)
{
    DWORD dwErrorCode;

    dwErrorCode = FUNC2(NULL);
    if (dwErrorCode != ERROR_SUCCESS)
    {
        FUNC0("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    *pJobId = FUNC4(hPrinter, pDocInfoContainer->Level, (PBYTE)pDocInfoContainer->DocInfo.pDocInfo1);
    dwErrorCode = FUNC1();

    FUNC3();
    return dwErrorCode;
}