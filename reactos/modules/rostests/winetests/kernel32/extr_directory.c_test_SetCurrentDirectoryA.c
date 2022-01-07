
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int SetCurrentDirectoryA (char*) ;
 int SetLastError (int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SetCurrentDirectoryA(void)
{
    SetLastError(0);
    ok( !SetCurrentDirectoryA( "\\some_dummy_dir" ), "SetCurrentDirectoryA succeeded\n" );
    ok( GetLastError() == ERROR_FILE_NOT_FOUND, "wrong error %d\n", GetLastError() );
    ok( !SetCurrentDirectoryA( "\\some_dummy\\subdir" ), "SetCurrentDirectoryA succeeded\n" );
    ok( GetLastError() == ERROR_PATH_NOT_FOUND, "wrong error %d\n", GetLastError() );
}
