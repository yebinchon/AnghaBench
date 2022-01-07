
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;


 int GetLastError () ;
 int LONG_LEN ;
 int MAX_PATH ;
 char* PathAddBackslashA (char*) ;
 int SetLastError (int) ;
 int lstrcmpA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int lstrlenA (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_PathAddBackslash(void)
{
    LPSTR str;
    char path[MAX_PATH];
    char too_long[LONG_LEN];


    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(((void*)0));
    ok(str == ((void*)0), "Expected str == NULL, got %p\n", str);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    path[0] = '\0';
    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(path);
    ok(str == (path + lstrlenA(path)), "Expected str to point to end of path, got %p\n", str);
    ok(!path[0], "Expected empty string, got %i\n", lstrlenA(path));
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, "one\\two");
    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(path);
    ok(str == (path + lstrlenA(path)), "Expected str to point to end of path, got %p\n", str);
    ok(!lstrcmpA(path, "one\\two\\"), "Expected one\\two\\, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, "one\\..\\two");
    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(path);
    ok(str == (path + lstrlenA(path)), "Expected str to point to end of path, got %p\n", str);
    ok(!lstrcmpA(path, "one\\..\\two\\"), "Expected one\\..\\two\\, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, " ");
    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(path);
    ok(str == (path + lstrlenA(path)), "Expected str to point to end of path, got %p\n", str);
    ok(!lstrcmpA(path, " \\"), "Expected  \\, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, "C:\\one\\");
    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(path);
    ok(str == (path + lstrlenA(path)), "Expected str to point to end of path, got %p\n", str);
    ok(!lstrcmpA(path, "C:\\one\\"), "Expected C:\\one\\, got %s\n", path);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());

    memset(too_long, 'a', LONG_LEN);
    too_long[LONG_LEN - 1] = '\0';


    SetLastError(0xdeadbeef);
    str = PathAddBackslashA(too_long);
    ok(str == ((void*)0), "Expected str == NULL, got %p\n", str);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
}
