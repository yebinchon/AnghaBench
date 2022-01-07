
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int CopyFileW (char*,char*,int ) ;
 int DeleteFileW (char*) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ ERROR_FILE_EXISTS ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetTempFileNameW (char*,char const*,int ,char*) ;
 int GetTempPathW (int,char*) ;
 int MAX_PATH ;
 int TRUE ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CopyFileW(void)
{
    WCHAR temp_path[MAX_PATH];
    WCHAR source[MAX_PATH], dest[MAX_PATH];
    static const WCHAR prefix[] = {'p','f','x',0};
    DWORD ret;

    ret = GetTempPathW(MAX_PATH, temp_path);
    if (ret == 0 && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("GetTempPathW is not available\n");
        return;
    }
    ok(ret != 0, "GetTempPathW error %d\n", GetLastError());
    ok(ret < MAX_PATH, "temp path should fit into MAX_PATH\n");

    ret = GetTempFileNameW(temp_path, prefix, 0, source);
    ok(ret != 0, "GetTempFileNameW error %d\n", GetLastError());

    ret = GetTempFileNameW(temp_path, prefix, 0, dest);
    ok(ret != 0, "GetTempFileNameW error %d\n", GetLastError());

    ret = CopyFileW(source, dest, TRUE);
    ok(!ret && GetLastError() == ERROR_FILE_EXISTS,
       "CopyFileW: unexpected error %d\n", GetLastError());

    ret = CopyFileW(source, dest, FALSE);
    ok(ret, "CopyFileW: error %d\n", GetLastError());

    ret = DeleteFileW(source);
    ok(ret, "DeleteFileW: error %d\n", GetLastError());
    ret = DeleteFileW(dest);
    ok(ret, "DeleteFileW: error %d\n", GetLastError());
}
