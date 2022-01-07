
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const WCHAR ;
struct TYPE_2__ {int attr; int name; } ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryW (int const*,int *) ;
 scalar_t__ CreateFileW (int const*,int,int ,int *,int ,int,int ) ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int backslashW ;
 int dotW ;
 int dotdotW ;
 int lstrcatW (int const*,int ) ;
 scalar_t__ lstrcmpW (int ,int ) ;
 int lstrcpyW (int const*,int const*) ;
 int ok (int,char*,int ,...) ;
 int test_dir_count ;
 TYPE_1__* testfiles ;
 int wine_dbgstr_w (int const*) ;

__attribute__((used)) static void set_up_attribute_test(const WCHAR *testdir)
{
    int i;
    BOOL ret;

    ret = CreateDirectoryW(testdir, ((void*)0));
    ok(ret, "couldn't create dir %s, error %d\n", wine_dbgstr_w(testdir), GetLastError());

    for (i=0; i < test_dir_count; i++) {
        WCHAR buf[MAX_PATH];

        if (lstrcmpW(testfiles[i].name, dotW) == 0 || lstrcmpW(testfiles[i].name, dotdotW) == 0)
            continue;
        lstrcpyW( buf, testdir );
        lstrcatW( buf, backslashW );
        lstrcatW( buf, testfiles[i].name );
        if (testfiles[i].attr & FILE_ATTRIBUTE_DIRECTORY) {
            ret = CreateDirectoryW(buf, ((void*)0));
            ok(ret, "couldn't create dir %s, error %d\n", wine_dbgstr_w(buf), GetLastError());
        } else {
            HANDLE h = CreateFileW(buf,
                                   GENERIC_READ|GENERIC_WRITE,
                                   0, ((void*)0), CREATE_ALWAYS,
                                   testfiles[i].attr, 0);
            ok( h != INVALID_HANDLE_VALUE, "failed to create temp file %s\n", wine_dbgstr_w(buf) );
            CloseHandle(h);
        }
    }
}
