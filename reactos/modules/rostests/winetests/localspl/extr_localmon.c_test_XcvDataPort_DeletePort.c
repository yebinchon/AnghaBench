
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int GetLastError () ;
 int SetLastError (int) ;
 int cmd_DeletePortW ;
 int hXcv ;
 int lstrlenW (scalar_t__) ;
 int ok (int,char*,scalar_t__,int ) ;
 scalar_t__ pXcvDataPort (int ,int ,int ,int,int *,int ,scalar_t__*) ;
 scalar_t__ tempfileW ;

__attribute__((used)) static void test_XcvDataPort_DeletePort(void)
{
    DWORD res;
    DWORD needed;



    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_DeletePortW, (PBYTE) tempfileW, (lstrlenW(tempfileW) + 1) * sizeof(WCHAR), ((void*)0), 0, &needed);
    ok( !res || (res == ERROR_FILE_NOT_FOUND),
        "returned %d with %u (expected ERROR_SUCCESS or ERROR_FILE_NOT_FOUND)\n",
        res, GetLastError());






    needed = (DWORD) 0xdeadbeef;
    SetLastError(0xdeadbeef);
    res = pXcvDataPort(hXcv, cmd_DeletePortW, (PBYTE) tempfileW, (lstrlenW(tempfileW) + 1) * sizeof(WCHAR), ((void*)0), 0, &needed);
    ok( res == ERROR_FILE_NOT_FOUND,
        "returned %d with %u (expected ERROR_FILE_NOT_FOUND)\n", res, GetLastError());




}
