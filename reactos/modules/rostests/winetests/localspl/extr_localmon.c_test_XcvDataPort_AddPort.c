
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ ERROR_SUCCESS ;
 int GetLastError () ;
 int SetLastError (int) ;
 int cmd_AddPortW ;
 int cmd_DeletePortW ;
 int hXcv ;
 int lstrlenW (scalar_t__) ;
 int ok (int,char*,scalar_t__,int ) ;
 scalar_t__ pXcvDataPort (int ,int ,int ,int,int *,int ,int *) ;
 scalar_t__ portname_lpt1W ;
 scalar_t__ tempfileW ;

__attribute__((used)) static void test_XcvDataPort_AddPort(void)
{
    DWORD res;
    if (0)
    {

    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_AddPortW, (PBYTE) tempfileW, (lstrlenW(tempfileW) + 1) * sizeof(WCHAR), ((void*)0), 0, ((void*)0));
    ok( res == ERROR_SUCCESS, "returned %d with %u (expected ERROR_SUCCESS)\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_AddPortW, (PBYTE) tempfileW, (lstrlenW(tempfileW) + 1) * sizeof(WCHAR), ((void*)0), 0, ((void*)0));
    ok( res == ERROR_ALREADY_EXISTS, "returned %d with %u (expected ERROR_ALREADY_EXISTS)\n", res, GetLastError());


    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_AddPortW, (PBYTE) portname_lpt1W, (lstrlenW(portname_lpt1W) + 1) * sizeof(WCHAR), ((void*)0), 0, ((void*)0));
    ok( res == ERROR_ALREADY_EXISTS, "returned %d with %u (expected ERROR_ALREADY_EXISTS)\n", res, GetLastError());







    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_DeletePortW, (PBYTE) tempfileW, (lstrlenW(tempfileW) + 1) * sizeof(WCHAR), ((void*)0), 0, ((void*)0));
    ok( res == ERROR_SUCCESS, "returned %d with %u (expected ERROR_SUCCESS)\n", res, GetLastError());
    }

}
