
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const WCHAR ;
struct TYPE_2__ {int attr; int name; } ;


 int DeleteFileW (int const*) ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int RemoveDirectoryW (int const*) ;
 int backslashW ;
 int dotW ;
 int dotdotW ;
 int lstrcatW (int const*,int ) ;
 scalar_t__ lstrcmpW (int ,int ) ;
 int lstrcpyW (int const*,int const*) ;
 int ok (int,char*,int ,scalar_t__) ;
 int test_dir_count ;
 TYPE_1__* testfiles ;
 int wine_dbgstr_w (int const*) ;

__attribute__((used)) static void tear_down_attribute_test(const WCHAR *testdir)
{
    int i;

    for (i = 0; i < test_dir_count; i++) {
        int ret;
        WCHAR buf[MAX_PATH];
        if (lstrcmpW(testfiles[i].name, dotW) == 0 || lstrcmpW(testfiles[i].name, dotdotW) == 0)
            continue;
        lstrcpyW( buf, testdir );
        lstrcatW( buf, backslashW );
        lstrcatW( buf, testfiles[i].name );
        if (testfiles[i].attr & FILE_ATTRIBUTE_DIRECTORY) {
            ret = RemoveDirectoryW(buf);
            ok(ret || (GetLastError() == ERROR_PATH_NOT_FOUND),
               "Failed to rmdir %s, error %d\n", wine_dbgstr_w(buf), GetLastError());
        } else {
            ret = DeleteFileW(buf);
            ok(ret || (GetLastError() == ERROR_PATH_NOT_FOUND),
               "Failed to rm %s, error %d\n", wine_dbgstr_w(buf), GetLastError());
        }
    }
    RemoveDirectoryW(testdir);
}
