
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryA (char const*,int *) ;
 scalar_t__ CreateFileA (char*,int,int ,int *,int ,int ,int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int ok (int,char*,char const*,...) ;
 int sprintf (char*,char*,char const*,char*) ;

__attribute__((used)) static void set_up_case_test(const char *testdir)
{
    BOOL ret;
    char buf[MAX_PATH];
    HANDLE h;

    ret = CreateDirectoryA(testdir, ((void*)0));
    ok(ret, "couldn't create dir '%s', error %d\n", testdir, GetLastError());

    sprintf(buf, "%s\\%s", testdir, "TesT");
    h = CreateFileA(buf, GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                    FILE_ATTRIBUTE_NORMAL, 0);
    ok(h != INVALID_HANDLE_VALUE, "failed to create temp file '%s'\n", buf);
    CloseHandle(h);
}
