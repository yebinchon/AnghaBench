
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BOOL ;


 int BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE ;
 int BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE ;
 int BASE_SEARCH_PATH_PERMANENT ;
 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateDirectoryA (char*,int *) ;
 int CreateFileA (char*,int ,int ,int *,int ,int ,int ) ;
 int DeleteFileA (char*) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_INVALID_PARAMETER ;
 int GENERIC_WRITE ;
 int GetCurrentDirectoryA (int,char*) ;
 int GetLastError () ;
 int GetSystemDirectoryA (char*,int) ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SearchPathA (int *,char*,int *,int,char*,int *) ;
 int SetCurrentDirectoryA (char*) ;
 int SetLastError (int) ;
 int lstrcmpiA (char*,char*) ;
 int ok (int,char*,...) ;
 int pSetSearchPathMode (int) ;
 int strcat (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SetSearchPathMode(void)
{
    BOOL ret;
    char orig[MAX_PATH], buf[MAX_PATH], dir[MAX_PATH], expect[MAX_PATH];
    HANDLE handle;

    if (!pSetSearchPathMode)
    {
        win_skip( "SetSearchPathMode isn't available\n" );
        return;
    }
    GetCurrentDirectoryA( MAX_PATH, orig );
    GetTempPathA( MAX_PATH, buf );
    GetTempFileNameA( buf, "path", 0, dir );
    DeleteFileA( dir );
    CreateDirectoryA( dir, ((void*)0) );
    ret = SetCurrentDirectoryA( dir );
    ok( ret, "failed to switch to %s\n", dir );
    if (!ret)
    {
        RemoveDirectoryA( dir );
        return;
    }

    handle = CreateFileA( "kernel32.dll", GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0 );
    CloseHandle( handle );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( 0 );
    ok( !ret, "SetSearchPathMode succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( 0x80 );
    ok( !ret, "SetSearchPathMode succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_PERMANENT );
    ok( !ret, "SetSearchPathMode succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = SearchPathA( ((void*)0), "kernel32.dll", ((void*)0), MAX_PATH, buf, ((void*)0) );
    ok( ret, "SearchPathA failed err %u\n", GetLastError() );
    GetCurrentDirectoryA( MAX_PATH, expect );
    strcat( expect, "\\kernel32.dll" );
    ok( !lstrcmpiA( buf, expect ), "found %s expected %s\n", buf, expect );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE );
    ok( ret, "SetSearchPathMode failed err %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = SearchPathA( ((void*)0), "kernel32.dll", ((void*)0), MAX_PATH, buf, ((void*)0) );
    ok( ret, "SearchPathA failed err %u\n", GetLastError() );
    GetSystemDirectoryA( expect, MAX_PATH );
    strcat( expect, "\\kernel32.dll" );
    ok( !lstrcmpiA( buf, expect ), "found %s expected %s\n", buf, expect );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE );
    ok( ret, "SetSearchPathMode failed err %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = SearchPathA( ((void*)0), "kernel32.dll", ((void*)0), MAX_PATH, buf, ((void*)0) );
    ok( ret, "SearchPathA failed err %u\n", GetLastError() );
    GetCurrentDirectoryA( MAX_PATH, expect );
    strcat( expect, "\\kernel32.dll" );
    ok( !lstrcmpiA( buf, expect ), "found %s expected %s\n", buf, expect );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE | BASE_SEARCH_PATH_PERMANENT );
    ok( !ret, "SetSearchPathMode succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE | BASE_SEARCH_PATH_PERMANENT );
    ok( ret, "SetSearchPathMode failed err %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE );
    ok( !ret, "SetSearchPathMode succeeded\n" );
    ok( GetLastError() == ERROR_ACCESS_DENIED, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE );
    ok( !ret, "SetSearchPathMode succeeded\n" );
    ok( GetLastError() == ERROR_ACCESS_DENIED, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = pSetSearchPathMode( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE | BASE_SEARCH_PATH_PERMANENT );
    ok( ret, "SetSearchPathMode failed err %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = SearchPathA( ((void*)0), "kernel32.dll", ((void*)0), MAX_PATH, buf, ((void*)0) );
    ok( ret, "SearchPathA failed err %u\n", GetLastError() );
    GetSystemDirectoryA( expect, MAX_PATH );
    strcat( expect, "\\kernel32.dll" );
    ok( !lstrcmpiA( buf, expect ), "found %s expected %s\n", buf, expect );

    DeleteFileA( "kernel32.dll" );
    SetCurrentDirectoryA( orig );
    RemoveDirectoryA( dir );
}
