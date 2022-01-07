
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int CreateDirectoryW (char const*,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_INVALID_NAME ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 int FALSE ;
 int GetCurrentDirectoryW (int,char*) ;
 scalar_t__ GetLastError () ;
 int GetSystemDirectoryW (char*,int) ;
 int GetTempPathW (int,char*) ;
 int MAX_PATH ;
 int RemoveDirectoryW (char*) ;
 int SetCurrentDirectoryW (char*) ;
 int TRUE ;
 int lstrcatW (char*,char const*) ;
 int lstrlenW (char*) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CreateDirectoryW(void)
{
    WCHAR tmpdir[MAX_PATH];
    BOOL ret;
    static const WCHAR empty_strW[] = { 0 };
    static const WCHAR tmp_dir_name[] = {'P','l','e','a','s','e',' ','R','e','m','o','v','e',' ','M','e',0};
    static const WCHAR dotW[] = {'.',0};
    static const WCHAR slashW[] = {'/',0};
    static const WCHAR dotdotW[] = {'.','.',0};
    static const WCHAR questionW[] = {'?',0};
    WCHAR curdir[MAX_PATH];

    ret = CreateDirectoryW(((void*)0), ((void*)0));
    if (!ret && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("CreateDirectoryW is not available\n");
        return;
    }
    ok(ret == FALSE && GetLastError() == ERROR_PATH_NOT_FOUND,
       "should not create NULL path ret %u err %u\n", ret, GetLastError());

    ret = CreateDirectoryW(empty_strW, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_PATH_NOT_FOUND,
       "should not create empty path ret %u err %u\n", ret, GetLastError());

    ret = GetSystemDirectoryW(tmpdir, MAX_PATH);
    ok(ret < MAX_PATH, "System directory should fit into MAX_PATH\n");

    GetCurrentDirectoryW(MAX_PATH, curdir);
    ret = SetCurrentDirectoryW(tmpdir);
    ok(ret == TRUE, "could not chdir to the System directory ret %u err %u\n", ret, GetLastError());

    ret = CreateDirectoryW(dotW, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_ALREADY_EXISTS,
       "should not create existing path ret %u err %u\n", ret, GetLastError());

    ret = CreateDirectoryW(dotdotW, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_ALREADY_EXISTS,
       "should not create existing path ret %u err %u\n", ret, GetLastError());

    GetTempPathW(MAX_PATH, tmpdir);
    tmpdir[3] = 0;
    ret = CreateDirectoryW(tmpdir, ((void*)0));
    ok(ret == FALSE && (GetLastError() == ERROR_ACCESS_DENIED || GetLastError() == ERROR_ALREADY_EXISTS),
       "should deny access to the drive root ret %u err %u\n", ret, GetLastError());

    GetTempPathW(MAX_PATH, tmpdir);
    lstrcatW(tmpdir, tmp_dir_name);
    ret = CreateDirectoryW(tmpdir, ((void*)0));
    ok(ret == TRUE, "CreateDirectoryW should always succeed\n");

    ret = CreateDirectoryW(tmpdir, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_ALREADY_EXISTS,
       "should not create existing path ret %u err %u\n", ret, GetLastError());

    ret = RemoveDirectoryW(tmpdir);
    ok(ret == TRUE, "RemoveDirectoryW should always succeed\n");

    lstrcatW(tmpdir, questionW);
    ret = CreateDirectoryW(tmpdir, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_INVALID_NAME,
       "CreateDirectoryW with ? wildcard name should fail with error 183, ret=%s error=%d\n",
       ret ? " True" : "False", GetLastError());
    ret = RemoveDirectoryW(tmpdir);
    ok(ret == FALSE, "RemoveDirectoryW should have failed\n");

    tmpdir[lstrlenW(tmpdir) - 1] = '*';
    ret = CreateDirectoryW(tmpdir, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_INVALID_NAME,
       "CreateDirectoryW with * wildcard name should fail with error 183, ret=%s error=%d\n",
       ret ? " True" : "False", GetLastError());
    ret = RemoveDirectoryW(tmpdir);
    ok(ret == FALSE, "RemoveDirectoryW should have failed\n");

    GetTempPathW(MAX_PATH, tmpdir);
    lstrcatW(tmpdir, tmp_dir_name);
    lstrcatW(tmpdir, slashW);
    lstrcatW(tmpdir, tmp_dir_name);
    ret = CreateDirectoryW(tmpdir, ((void*)0));
    ok(ret == FALSE && GetLastError() == ERROR_PATH_NOT_FOUND,
      "CreateDirectoryW with multiple nonexistent directories in path should fail ret %u err %u\n",
       ret, GetLastError());
    ret = RemoveDirectoryW(tmpdir);
    ok(ret == FALSE, "RemoveDirectoryW should have failed\n");

    SetCurrentDirectoryW(curdir);
}
