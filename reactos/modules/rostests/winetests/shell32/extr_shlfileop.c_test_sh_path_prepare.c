
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_PATH_A ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int ERROR_DIRECTORY ;
 int ERROR_INVALID_NAME ;
 int ERROR_PATH_NOT_FOUND ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SHPPFW_DIRCREATE ;
 int SHPPFW_IGNOREFILENAME ;
 int SHPPFW_NONE ;
 scalar_t__ SHPathPrepareForWriteA (int ,int ,char*,int) ;
 scalar_t__ SHPathPrepareForWriteW (int ,int ,int ,int) ;
 scalar_t__ S_OK ;
 int SetLastError (int) ;
 int UNICODE_PATH ;
 int WC_NO_BEST_FIT_CHARS ;
 scalar_t__ WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,scalar_t__*) ;
 int file_exists (char*) ;
 int ok (int,char*,...) ;
 int set_curr_dir_path (char*,char*) ;
 int win_skip (char*,...) ;

__attribute__((used)) static void test_sh_path_prepare(void)
{
    HRESULT res;
    CHAR path[MAX_PATH];
    CHAR UNICODE_PATH_A[MAX_PATH];
    BOOL UsedDefaultChar;


    set_curr_dir_path(path, "testdir2\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_NONE);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);


    set_curr_dir_path(path, "testdir2\\test4.txt\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_IGNOREFILENAME);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);


    set_curr_dir_path(path, "testdir2\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_DIRCREATE);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);


    set_curr_dir_path(path, "testdir2\\test4.txt\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_IGNOREFILENAME|SHPPFW_DIRCREATE);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);
    ok(!file_exists("nonexistent\\"), "nonexistent\\ exists but shouldn't\n");


    set_curr_dir_path(path, "test1.txt\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_NONE);
    ok(res == HRESULT_FROM_WIN32(ERROR_DIRECTORY) ||
       res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) ||
       res == HRESULT_FROM_WIN32(ERROR_INVALID_NAME),
       "Unexpected result : 0x%08x\n", res);


    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_DIRCREATE);
    ok(res == HRESULT_FROM_WIN32(ERROR_DIRECTORY) ||
       res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) ||
       res == HRESULT_FROM_WIN32(ERROR_INVALID_NAME),
       "Unexpected result : 0x%08x\n", res);


    set_curr_dir_path(path, "test1.txt\\\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_NONE);
    ok(res == HRESULT_FROM_WIN32(ERROR_DIRECTORY) ||
       res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) ||
       res == HRESULT_FROM_WIN32(ERROR_INVALID_NAME),
       "Unexpected result : 0x%08x\n", res);


    res = SHPathPrepareForWriteA(0, 0, ".\\testdir2", SHPPFW_DIRCREATE);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);


    res = SHPathPrepareForWriteA(0, 0, ".\\testdir2\\test4.txt", SHPPFW_DIRCREATE);
    ok(res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND), "res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);
    ok(!file_exists(".\\testdir2\\test4.txt\\"), ".\\testdir2\\test4.txt\\ exists but shouldn't\n");


    set_curr_dir_path(path, "nonexistent\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_NONE);
    ok(res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND), "res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);


    set_curr_dir_path(path, "nonexistent\\notreal\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_IGNOREFILENAME);
    ok(res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND), "res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);
    ok(!file_exists("nonexistent\\notreal"), "nonexistent\\notreal exists but shouldn't\n");
    ok(!file_exists("nonexistent\\"), "nonexistent\\ exists but shouldn't\n");


    set_curr_dir_path(path, "testdir2\\test4.txt\\\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_IGNOREFILENAME|SHPPFW_DIRCREATE);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);
    ok(file_exists("testdir2\\test4.txt\\"), "testdir2\\test4.txt doesn't exist but should\n");


    set_curr_dir_path(path, "nonexistent\\notreal\0");
    res = SHPathPrepareForWriteA(0, 0, path, SHPPFW_DIRCREATE);
    ok(res == S_OK, "res == 0x%08x, expected S_OK\n", res);
    ok(file_exists("nonexistent\\notreal"), "nonexistent\\notreal doesn't exist but should\n");



    SetLastError(0xdeadbeef);
    UsedDefaultChar = FALSE;
    if (WideCharToMultiByte(CP_ACP, WC_NO_BEST_FIT_CHARS, UNICODE_PATH, -1, UNICODE_PATH_A, sizeof(UNICODE_PATH_A), ((void*)0), &UsedDefaultChar) == 0)
    {
        win_skip("Could not convert Unicode path name to multibyte (%d)\n", GetLastError());
        return;
    }
    if (UsedDefaultChar)
    {
        win_skip("Could not find unique multibyte representation for directory name using default codepage\n");
        return;
    }


    RemoveDirectoryA(UNICODE_PATH_A);
    res = SHPathPrepareForWriteW(0, 0, UNICODE_PATH, SHPPFW_NONE);
    ok(res == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND), "res == %08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);
    ok(!file_exists(UNICODE_PATH_A), "unicode path was created but shouldn't be\n");
    RemoveDirectoryA(UNICODE_PATH_A);


    res = SHPathPrepareForWriteW(0, 0, UNICODE_PATH, SHPPFW_DIRCREATE);
    ok(res == S_OK, "res == %08x, expected S_OK\n", res);
    ok(file_exists(UNICODE_PATH_A), "unicode path should've been created\n");


    res = SHPathPrepareForWriteW(0, 0, UNICODE_PATH, SHPPFW_NONE);
    ok(res == S_OK, "ret == %08x, expected S_OK\n", res);


    res = SHPathPrepareForWriteW(0, 0, UNICODE_PATH, SHPPFW_DIRCREATE);
    ok(res == S_OK, "ret == %08x, expected S_OK\n", res);
    RemoveDirectoryA(UNICODE_PATH_A);
}
