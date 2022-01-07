
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;


 int GetLastError () ;
 int LONG_LEN ;
 int MAX_PATH ;
 char* PathFindExtensionA (char*) ;
 int SetLastError (int) ;
 int lstrcmpA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int lstrlenA (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_PathFindExtensionA(void)
{
    LPSTR ext;
    char path[MAX_PATH];
    char too_long[LONG_LEN];


    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(((void*)0));
    ok(ext == ((void*)0), "Expected NULL, got %p\n", ext);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    path[0] = '\0';
    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(path);
    ok(ext == path, "Expected ext == path, got %p\n", ext);
    ok(!ext[0], "Expected length 0, got %i\n", lstrlenA(ext));
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, "file");
    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(path);
    ok(ext == path + lstrlenA(path), "Expected ext == path, got %p\n", ext);
    ok(!ext[0], "Expected length 0, got %i\n", lstrlenA(ext));
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, "file.txt");
    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(path);
    ok(ext == path + lstrlenA("file"),
       "Expected ext == path + lstrlenA(\"file\"), got %p\n", ext);
    ok(!lstrcmpA(ext, ".txt"), "Expected .txt, got %s\n", ext);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    lstrcpyA(path, "file.txt.doc");
    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(path);
    ok(ext == path + lstrlenA("file.txt"),
       "Expected ext == path + lstrlenA(\"file.txt\"), got %p\n", ext);
    ok(!lstrcmpA(ext, ".doc"), "Expected .txt, got %s\n", ext);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    memset(too_long, 'a', LONG_LEN);
    too_long[LONG_LEN - 1] = '\0';
    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(too_long);
    ok(ext == too_long + LONG_LEN - 1, "Expected ext == too_long + LONG_LEN - 1, got %p\n", ext);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    memset(too_long, 'a', LONG_LEN);
    too_long[LONG_LEN - 1] = '\0';
    lstrcpyA(too_long + 300, ".abcde");
    too_long[lstrlenA(too_long)] = 'a';
    SetLastError(0xdeadbeef);
    ext = PathFindExtensionA(too_long);
    ok(ext == too_long + 300, "Expected ext == too_long + 300, got %p\n", ext);
    ok(lstrlenA(ext) == LONG_LEN - 301, "Expected LONG_LEN - 301, got %i\n", lstrlenA(ext));
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
}
