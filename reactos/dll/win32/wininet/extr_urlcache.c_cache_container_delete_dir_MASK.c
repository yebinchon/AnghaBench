#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {int fAnyOperationsAborted; int /*<<< orphan*/  fFlags; int /*<<< orphan*/ * pTo; scalar_t__* pFrom; int /*<<< orphan*/  wFunc; int /*<<< orphan*/ * hwnd; } ;
typedef  TYPE_1__ SHFILEOPSTRUCTW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FOF_NOCONFIRMATION ; 
 int /*<<< orphan*/  FO_DELETE ; 
 int MAX_PATH ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(LPCWSTR lpszPath)
{
    DWORD path_len;
    WCHAR path[MAX_PATH + 1];
    SHFILEOPSTRUCTW shfos;
    int ret;

    path_len = FUNC4(lpszPath);
    if (path_len >= MAX_PATH)
        return FALSE;
    FUNC3(path, lpszPath);
    path[path_len + 1] = 0;  /* double-NUL-terminate path */

    shfos.hwnd = NULL;
    shfos.wFunc = FO_DELETE;
    shfos.pFrom = path;
    shfos.pTo = NULL;
    shfos.fFlags = FOF_NOCONFIRMATION;
    shfos.fAnyOperationsAborted = FALSE;
    ret = FUNC1(&shfos);
    if (ret)
        FUNC0("SHFileOperationW on %s returned %i\n", FUNC2(path), ret);
    return !(ret || shfos.fAnyOperationsAborted);
}