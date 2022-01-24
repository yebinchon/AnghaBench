#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int dwMajorVersion; int dwMinorVersion; int wFlags; } ;
typedef  TYPE_1__ VersionLieInfo ;
typedef  int /*<<< orphan*/ * PHOOKAPI ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int FLAG_AlternateHookOrder ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int _WIN32_WINNT_WINXP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  g_WinVersion ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC8(LPCSTR shim, const VersionLieInfo* info)
{
    DWORD num_shims = 0;
    WCHAR wide_shim[50] = { 0 };
    PHOOKAPI hook;
    DWORD ver;
    FUNC0(CP_ACP, 0, shim, -1, wide_shim, 50);
    hook = FUNC3("", wide_shim, &num_shims);
    ver = (info->dwMajorVersion << 8) | info->dwMinorVersion;
    if (hook == NULL)
    {
        FUNC4("Skipping tests for layers (%s) not present in this os (0x%x)\n", shim, g_WinVersion);
        return;
    }
    FUNC2(hook != NULL, "Expected hook to be a valid pointer for %s\n", shim);
    if (info->wFlags & FLAG_AlternateHookOrder)
    {
        FUNC2(num_shims == 3, "Expected num_shims to be 3, was: %u for %s\n", num_shims, shim);
        if (hook && num_shims == 3)
        {
            int same = 0;
            FUNC1(hook + 0, "KERNEL32.DLL", "GetVersion", shim, &same);
            FUNC5(hook + 0, info, shim, same);
            FUNC1(hook + 1, "KERNEL32.DLL", "GetVersionExA", shim, &same);
            FUNC6(hook + 1, info, shim, same);
            FUNC1(hook + 2, "KERNEL32.DLL", "GetVersionExW", shim, &same);
            FUNC7(hook + 2, info, shim, same, 0);
        }
    }
    else
    {
        int shimnum_ok = num_shims == 4 || ((ver < _WIN32_WINNT_WINXP) && (num_shims == 3));
        FUNC2(shimnum_ok, "Expected num_shims to be 4%s, was: %u for %s\n", ((ver < _WIN32_WINNT_WINXP) ? " or 3":""), num_shims, shim);
        if (hook && shimnum_ok)
        {
            int same = 0;
            FUNC1(hook + 0, "KERNEL32.DLL", "GetVersionExA", shim, &same);
            FUNC6(hook + 0, info, shim, same);
            FUNC1(hook + 1, "KERNEL32.DLL", "GetVersionExW", shim, &same);
            FUNC7(hook + 1, info, shim, same, 0);
            FUNC1(hook + 2, "KERNEL32.DLL", "GetVersion", shim, &same);
            FUNC5(hook + 2, info, shim, same);
            if (num_shims == 4)
            {
                FUNC1(hook + 3, "NTDLL.DLL", "RtlGetVersion", shim, &same);
                FUNC7(hook + 3, info, shim, same, 1);
            }
        }
    }
}