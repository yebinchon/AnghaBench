
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int dwMajorVersion; int dwMinorVersion; int wFlags; } ;
typedef TYPE_1__ VersionLieInfo ;
typedef int * PHOOKAPI ;
typedef int LPCSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int FLAG_AlternateHookOrder ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int _WIN32_WINNT_WINXP ;
 int expect_shim (int *,char*,char*,int ,int*) ;
 int g_WinVersion ;
 int ok (int,char*,...) ;
 int * pGetHookAPIs (char*,int *,int*) ;
 int skip (char*,int ,int ) ;
 int verify_shim (int *,TYPE_1__ const*,int ,int) ;
 int verify_shima (int *,TYPE_1__ const*,int ,int) ;
 int verify_shimw (int *,TYPE_1__ const*,int ,int,int) ;

__attribute__((used)) static void run_test(LPCSTR shim, const VersionLieInfo* info)
{
    DWORD num_shims = 0;
    WCHAR wide_shim[50] = { 0 };
    PHOOKAPI hook;
    DWORD ver;
    MultiByteToWideChar(CP_ACP, 0, shim, -1, wide_shim, 50);
    hook = pGetHookAPIs("", wide_shim, &num_shims);
    ver = (info->dwMajorVersion << 8) | info->dwMinorVersion;
    if (hook == ((void*)0))
    {
        skip("Skipping tests for layers (%s) not present in this os (0x%x)\n", shim, g_WinVersion);
        return;
    }
    ok(hook != ((void*)0), "Expected hook to be a valid pointer for %s\n", shim);
    if (info->wFlags & FLAG_AlternateHookOrder)
    {
        ok(num_shims == 3, "Expected num_shims to be 3, was: %u for %s\n", num_shims, shim);
        if (hook && num_shims == 3)
        {
            int same = 0;
            expect_shim(hook + 0, "KERNEL32.DLL", "GetVersion", shim, &same);
            verify_shim(hook + 0, info, shim, same);
            expect_shim(hook + 1, "KERNEL32.DLL", "GetVersionExA", shim, &same);
            verify_shima(hook + 1, info, shim, same);
            expect_shim(hook + 2, "KERNEL32.DLL", "GetVersionExW", shim, &same);
            verify_shimw(hook + 2, info, shim, same, 0);
        }
    }
    else
    {
        int shimnum_ok = num_shims == 4 || ((ver < _WIN32_WINNT_WINXP) && (num_shims == 3));
        ok(shimnum_ok, "Expected num_shims to be 4%s, was: %u for %s\n", ((ver < _WIN32_WINNT_WINXP) ? " or 3":""), num_shims, shim);
        if (hook && shimnum_ok)
        {
            int same = 0;
            expect_shim(hook + 0, "KERNEL32.DLL", "GetVersionExA", shim, &same);
            verify_shima(hook + 0, info, shim, same);
            expect_shim(hook + 1, "KERNEL32.DLL", "GetVersionExW", shim, &same);
            verify_shimw(hook + 1, info, shim, same, 0);
            expect_shim(hook + 2, "KERNEL32.DLL", "GetVersion", shim, &same);
            verify_shim(hook + 2, info, shim, same);
            if (num_shims == 4)
            {
                expect_shim(hook + 3, "NTDLL.DLL", "RtlGetVersion", shim, &same);
                verify_shimw(hook + 3, info, shim, same, 1);
            }
        }
    }
}
