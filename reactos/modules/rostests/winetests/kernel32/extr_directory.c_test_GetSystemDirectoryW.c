
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef int UINT ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ GetLastError () ;
 int GetSystemDirectoryW (float*,int) ;
 int MAX_PATH ;
 scalar_t__ lstrcmpW (float*,float const*) ;
 int lstrcpyW (float*,float const*) ;
 int lstrlenW (float*) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetSystemDirectoryW(void)
{
    UINT len, len_with_null;
    WCHAR buf[MAX_PATH];
    static const WCHAR fooW[] = {'f','o','o',0};

    len_with_null = GetSystemDirectoryW(((void*)0), 0);
    if (len_with_null == 0 && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("GetSystemDirectoryW is not available\n");
        return;
    }
    ok(len_with_null <= MAX_PATH, "should fit into MAX_PATH\n");

    lstrcpyW(buf, fooW);
    len = GetSystemDirectoryW(buf, 1);
    ok(lstrcmpW(buf, fooW) == 0, "should not touch the buffer\n");
    ok(len == len_with_null, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null);

    lstrcpyW(buf, fooW);
    len = GetSystemDirectoryW(buf, len_with_null - 1);
    ok(lstrcmpW(buf, fooW) == 0, "should not touch the buffer\n");
    ok(len == len_with_null, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null);

    lstrcpyW(buf, fooW);
    len = GetSystemDirectoryW(buf, len_with_null);
    ok(lstrcmpW(buf, fooW) != 0, "should touch the buffer\n");
    ok(len == lstrlenW(buf), "returned length should be equal to the length of string\n");
    ok(len == len_with_null-1, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null-1);
}
