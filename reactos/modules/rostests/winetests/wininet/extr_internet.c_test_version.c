
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int version ;
struct TYPE_3__ {int dwMajorVersion; int dwMinorVersion; } ;
typedef TYPE_1__ INTERNET_VERSION_INFO ;
typedef int DWORD ;
typedef int BOOL ;


 int GetLastError () ;
 int INTERNET_OPTION_VERSION ;
 int InternetQueryOptionA (int *,int ,TYPE_1__*,int*) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_version(void)
{
    INTERNET_VERSION_INFO version;
    DWORD size;
    BOOL res;

    size = sizeof(version);
    res = InternetQueryOptionA(((void*)0), INTERNET_OPTION_VERSION, &version, &size);
    ok(res, "Could not get version: %u\n", GetLastError());
    ok(version.dwMajorVersion == 1, "dwMajorVersion=%d, expected 1\n", version.dwMajorVersion);
    ok(version.dwMinorVersion == 2, "dwMinorVersion=%d, expected 2\n", version.dwMinorVersion);
}
