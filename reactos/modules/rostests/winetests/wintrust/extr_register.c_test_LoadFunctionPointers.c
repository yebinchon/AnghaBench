
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int funcs ;
struct TYPE_3__ {int cbStruct; int * pfnFree; int * pfnAlloc; int member_0; } ;
typedef int GUID ;
typedef TYPE_1__ CRYPT_PROVIDER_FUNCTIONS ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int WINTRUST_ACTION_GENERIC_VERIFY_V2 ;
 int ok (int,char*,...) ;
 int pWintrustLoadFunctionPointers (int *,TYPE_1__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_LoadFunctionPointers(void)
{
    BOOL ret;
    CRYPT_PROVIDER_FUNCTIONS funcs = {0};
    GUID action = WINTRUST_ACTION_GENERIC_VERIFY_V2;

    if (!pWintrustLoadFunctionPointers)
    {
        win_skip("WintrustLoadFunctionPointers is not available\n");
        return;
    }
    SetLastError(0xdeadbeef);
    ret = pWintrustLoadFunctionPointers(((void*)0), ((void*)0));
    ok(!ret && GetLastError() == 0xdeadbeef, "Expected failure\n");
    SetLastError(0xdeadbeef);
    ret = pWintrustLoadFunctionPointers(&action, ((void*)0));
    ok(!ret && GetLastError() == 0xdeadbeef, "Expected failure\n");

    SetLastError(0xdeadbeef);
    ret = pWintrustLoadFunctionPointers(((void*)0), &funcs);
    ok(!ret, "WintrustLoadFunctionPointers succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER ||
        GetLastError() == 0xdeadbeef ,
        "Expected ERROR_INVALID_PARAMETER or 0xdeadbeef, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    funcs.cbStruct = 0;
    ret = pWintrustLoadFunctionPointers(&action, &funcs);
    ok(!ret && GetLastError() == 0xdeadbeef, "Expected failure\n");
    SetLastError(0xdeadbeef);
    funcs.cbStruct = sizeof(funcs);
    ret = pWintrustLoadFunctionPointers(&action, &funcs);
    ok(ret, "WintrustLoadFunctionPointers failed: %d\n", GetLastError());
    ok(funcs.pfnAlloc != ((void*)0), "Expected a pointer\n");
    ok(funcs.pfnFree != ((void*)0), "Expected a pointer\n");
}
