
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wcx ;
struct TYPE_3__ {int cbSize; int * lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSEXA ;
typedef int WNDCLASSA ;
typedef char WCHAR ;
typedef int BOOL ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_NOACCESS ;
 int GetClassInfoA (int ,char*,int *) ;
 int GetClassInfoExA (int ,char*,TYPE_1__*) ;
 int GetClassInfoExW (int ,char const*,int *) ;
 int GetClassInfoW (int ,char const*,int *) ;
 int GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetClassInfo(void)
{
    static const WCHAR staticW[] = {'s','t','a','t','i','c',0};
    WNDCLASSA wc;
    WNDCLASSEXA wcx;
    BOOL ret;

    SetLastError(0xdeadbeef);
    ret = GetClassInfoA(0, "static", &wc);
    ok(ret, "GetClassInfoA() error %d\n", GetLastError());

if (0) {
    SetLastError(0xdeadbeef);
    ret = GetClassInfoA(0, "static", ((void*)0));
    ok(ret, "GetClassInfoA() error %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetClassInfoW(0, staticW, ((void*)0));
    ok(ret, "GetClassInfoW() error %d\n", GetLastError());
}

    wcx.cbSize = sizeof(wcx);
    SetLastError(0xdeadbeef);
    ret = GetClassInfoExA(0, "static", &wcx);
    ok(ret, "GetClassInfoExA() error %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetClassInfoExA(0, "static", ((void*)0));
    ok(!ret, "GetClassInfoExA() should fail\n");
    ok(GetLastError() == ERROR_NOACCESS ||
       broken(GetLastError() == 0xdeadbeef),
       "expected ERROR_NOACCESS, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetClassInfoExW(0, staticW, ((void*)0));
    ok(!ret, "GetClassInfoExW() should fail\n");
    ok(GetLastError() == ERROR_NOACCESS ||
       broken(GetLastError() == 0xdeadbeef) ||
       broken(GetLastError() == ERROR_CALL_NOT_IMPLEMENTED),
       "expected ERROR_NOACCESS, got %d\n", GetLastError());

    wcx.cbSize = 0;
    wcx.lpfnWndProc = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = GetClassInfoExA(0, "static", &wcx);
    ok(ret, "GetClassInfoExA() error %d\n", GetLastError());
    ok(wcx.cbSize == 0, "expected 0, got %u\n", wcx.cbSize);
    ok(wcx.lpfnWndProc != ((void*)0), "got null proc\n");

    wcx.cbSize = sizeof(wcx) - 1;
    wcx.lpfnWndProc = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = GetClassInfoExA(0, "static", &wcx);
    ok(ret, "GetClassInfoExA() error %d\n", GetLastError());
    ok(wcx.cbSize == sizeof(wcx) - 1, "expected sizeof(wcx)-1, got %u\n", wcx.cbSize);
    ok(wcx.lpfnWndProc != ((void*)0), "got null proc\n");

    wcx.cbSize = sizeof(wcx) + 1;
    wcx.lpfnWndProc = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = GetClassInfoExA(0, "static", &wcx);
    ok(ret, "GetClassInfoExA() error %d\n", GetLastError());
    ok(wcx.cbSize == sizeof(wcx) + 1, "expected sizeof(wcx)+1, got %u\n", wcx.cbSize);
    ok(wcx.lpfnWndProc != ((void*)0), "got null proc\n");
}
