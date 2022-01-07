
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int RemoveDirectoryA (char const*) ;
 int ok (int,char*,char*,scalar_t__) ;
 int sprintf (char*,char*,char const*,char*) ;

__attribute__((used)) static void tear_down_case_test(const char *testdir)
{
    int ret;
    char buf[MAX_PATH];

    sprintf(buf, "%s\\%s", testdir, "TesT");
    ret = DeleteFileA(buf);
    ok(ret || (GetLastError() == ERROR_PATH_NOT_FOUND),
       "Failed to rm %s, error %d\n", buf, GetLastError());
    RemoveDirectoryA(testdir);
}
