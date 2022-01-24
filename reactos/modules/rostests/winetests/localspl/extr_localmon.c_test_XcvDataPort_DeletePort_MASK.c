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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmd_DeletePortW ; 
 int /*<<< orphan*/  hXcv ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ tempfileW ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD   res;
    DWORD   needed;


    /* cleanup: just to make sure */
    needed = (DWORD) 0xdeadbeef;
    FUNC1(0xdeadbeef);
    res = FUNC4(hXcv, cmd_DeletePortW, (PBYTE) tempfileW, (FUNC2(tempfileW) + 1) * sizeof(WCHAR), NULL, 0, &needed);
    FUNC3( !res  || (res == ERROR_FILE_NOT_FOUND),
        "returned %d with %u (expected ERROR_SUCCESS or ERROR_FILE_NOT_FOUND)\n",
        res, FUNC0());


    /* ToDo: cmd_AddPortW for tempfileW, then cmd_DeletePortW for the existing Port */


    /* try to delete a nonexistent Port */
    needed = (DWORD) 0xdeadbeef;
    FUNC1(0xdeadbeef);
    res = FUNC4(hXcv, cmd_DeletePortW, (PBYTE) tempfileW, (FUNC2(tempfileW) + 1) * sizeof(WCHAR), NULL, 0, &needed);
    FUNC3( res == ERROR_FILE_NOT_FOUND,
        "returned %d with %u (expected ERROR_FILE_NOT_FOUND)\n", res, FUNC0());

    /* emptyW as Portname: ERROR_FILE_NOT_FOUND is returned */
    /* NULL as Portname: Native localspl.dll crashed */

}