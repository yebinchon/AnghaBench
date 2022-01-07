
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryA (char*,int *) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int ) ;
 int DeleteFileA (char*) ;
 int GENERIC_WRITE ;
 int GetCurrentDirectoryW (int,int *) ;
 int GetFileAttributesA (char*) ;
 char* GetLastError () ;
 int GetShortPathNameA (char*,char*,int) ;
 int GetTempPathA (int,char*) ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SetCurrentDirectoryA (char*) ;
 int SetCurrentDirectoryW (int *) ;
 int ok (int,char*,...) ;
 int pGetLongPathNameA (char*,char*,int) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_relative_path(void)
{
    char path[MAX_PATH], buf[MAX_PATH];
    HANDLE file;
    int ret;
    WCHAR curdir[MAX_PATH];

    if (!pGetLongPathNameA) return;

    GetCurrentDirectoryW(MAX_PATH, curdir);
    GetTempPathA(MAX_PATH, path);
    ret = SetCurrentDirectoryA(path);
    ok(ret, "SetCurrentDirectory error %d\n", GetLastError());

    ret = CreateDirectoryA("foo", ((void*)0));
    ok(ret, "CreateDirectory error %d\n", GetLastError());
    file = CreateFileA("foo\\file", GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0);
    ok(file != INVALID_HANDLE_VALUE, "failed to create temp file\n");
    CloseHandle(file);
    ret = CreateDirectoryA("bar", ((void*)0));
    ok(ret, "CreateDirectory error %d\n", GetLastError());
    ret = SetCurrentDirectoryA("bar");
    ok(ret, "SetCurrentDirectory error %d\n", GetLastError());

    ret = GetFileAttributesA("..\\foo\\file");
    ok(ret != INVALID_FILE_ATTRIBUTES, "GetFileAttributes error %d\n", GetLastError());

    strcpy(buf, "deadbeef");
    ret = pGetLongPathNameA(".", buf, MAX_PATH);
    ok(ret, "GetLongPathName error %d\n", GetLastError());
    ok(!strcmp(buf, "."), "expected ., got %s\n", buf);
    strcpy(buf, "deadbeef");
    ret = GetShortPathNameA(".", buf, MAX_PATH);
    ok(ret, "GetShortPathName error %d\n", GetLastError());
    ok(!strcmp(buf, "."), "expected ., got %s\n", buf);

    strcpy(buf, "deadbeef");
    ret = pGetLongPathNameA("..", buf, MAX_PATH);
    ok(ret, "GetLongPathName error %d\n", GetLastError());
    ok(!strcmp(buf, ".."), "expected .., got %s\n", buf);
    strcpy(buf, "deadbeef");
    ret = GetShortPathNameA("..", buf, MAX_PATH);
    ok(ret, "GetShortPathName error %d\n", GetLastError());
    ok(!strcmp(buf, ".."), "expected .., got %s\n", buf);

    strcpy(buf, "deadbeef");
    ret = pGetLongPathNameA("..\\foo\\file", buf, MAX_PATH);
    ok(ret, "GetLongPathName error %d\n", GetLastError());
    ok(!strcmp(buf, "..\\foo\\file"), "expected ..\\foo\\file, got %s\n", buf);
    strcpy(buf, "deadbeef");
    ret = GetShortPathNameA("..\\foo\\file", buf, MAX_PATH);
    ok(ret, "GetShortPathName error %d\n", GetLastError());
    ok(!strcmp(buf, "..\\foo\\file"), "expected ..\\foo\\file, got %s\n", buf);

    strcpy(buf, "deadbeef");
    ret = pGetLongPathNameA(".\\..\\foo\\file", buf, MAX_PATH);
    ok(ret, "GetLongPathName error %d\n", GetLastError());
    ok(!strcmp(buf, ".\\..\\foo\\file"), "expected .\\..\\foo\\file, got %s\n", buf);
    strcpy(buf, "deadbeef");
    ret = GetShortPathNameA(".\\..\\foo\\file", buf, MAX_PATH);
    ok(ret, "GetShortPathName error %d\n", GetLastError());
    ok(!strcmp(buf, ".\\..\\foo\\file"), "expected .\\..\\foo\\file, got %s\n", buf);


    strcpy(buf, "deadbeef");
    ret = pGetLongPathNameA("..\\\\foo\\file", buf, MAX_PATH);
    ok(ret, "GetLongPathName error %d\n", GetLastError());
    ok(!strcmp(buf, "..\\\\foo\\file"), "expected ..\\\\foo\\file, got %s\n", buf);
    strcpy(buf, "deadbeef");
    ret = GetShortPathNameA("..\\\\foo\\file", buf, MAX_PATH);
    ok(ret, "GetShortPathName error %d\n", GetLastError());
    ok(!strcmp(buf, "..\\\\foo\\file"), "expected ..\\\\foo\\file, got %s\n", buf);

    SetCurrentDirectoryA("..");
    DeleteFileA("foo\\file");
    RemoveDirectoryA("foo");
    RemoveDirectoryA("bar");
    SetCurrentDirectoryW(curdir);
}
