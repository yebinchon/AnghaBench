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
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  pProcessName; } ;
typedef  TYPE_1__* PWTS_PROCESS_INFOW ;
typedef  size_t DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,TYPE_1__**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  WTS_CURRENT_SERVER_HANDLE ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BOOL found = FALSE, ret;
    DWORD count, i;
    PWTS_PROCESS_INFOW info;
    WCHAR *pname, nameW[MAX_PATH];

    FUNC1(NULL, nameW, MAX_PATH);
    for (pname = nameW + FUNC7(nameW); pname > nameW; pname--)
    {
        if(*pname == '/' || *pname == '\\')
        {
            pname++;
            break;
        }
    }

    info = NULL;
    FUNC2(0xdeadbeef);
    ret = FUNC3(WTS_CURRENT_SERVER_HANDLE, 1, 1, &info, &count);
    FUNC8(!ret, "expected WTSEnumerateProcessesW to fail\n");
    FUNC8(FUNC0()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", FUNC0());
    if (info) FUNC4(info);

    info = NULL;
    FUNC2(0xdeadbeef);
    ret = FUNC3(WTS_CURRENT_SERVER_HANDLE, 0, 0, &info, &count);
    FUNC8(!ret, "expected WTSEnumerateProcessesW to fail\n");
    FUNC8(FUNC0()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", FUNC0());
    if (info) FUNC4(info);

    info = NULL;
    FUNC2(0xdeadbeef);
    ret = FUNC3(WTS_CURRENT_SERVER_HANDLE, 0, 2, &info, &count);
    FUNC8(!ret, "expected WTSEnumerateProcessesW to fail\n");
    FUNC8(FUNC0()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", FUNC0());
    if (info) FUNC4(info);

    FUNC2(0xdeadbeef);
    ret = FUNC3(WTS_CURRENT_SERVER_HANDLE, 0, 1, NULL, &count);
    FUNC8(!ret, "expected WTSEnumerateProcessesW to fail\n");
    FUNC8(FUNC0()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", FUNC0());

    info = NULL;
    FUNC2(0xdeadbeef);
    ret = FUNC3(WTS_CURRENT_SERVER_HANDLE, 0, 1, &info, NULL);
    FUNC8(!ret, "expected WTSEnumerateProcessesW to fail\n");
    FUNC8(FUNC0()== ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER got: %d\n", FUNC0());
    if (info) FUNC4(info);

    count = 0;
    info = NULL;
    FUNC2(0xdeadbeef);
    ret = FUNC3(WTS_CURRENT_SERVER_HANDLE, 0, 1, &info, &count);
    FUNC8(ret || FUNC5(!ret), /* fails on Win2K with error ERROR_APP_WRONG_OS */
        "expected WTSEnumerateProcessesW to succeed; failed with %d\n", FUNC0());
    for(i = 0; ret && i < count; i++)
    {
        found = found || !FUNC6(pname, info[i].pProcessName);
    }
    FUNC8(found || FUNC5(!ret), "process name %s not found\n", FUNC9(pname));
    if (info) FUNC4(info);
}