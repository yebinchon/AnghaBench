
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_x86 ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CSIDL_PROGRAM_FILES ;
 int CSIDL_PROGRAM_FILESX86 ;
 int CSIDL_PROGRAM_FILES_COMMON ;
 int CSIDL_PROGRAM_FILES_COMMONX86 ;
 int E_FAIL ;
 int FALSE ;
 int GetCurrentProcess () ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 int SHGFP_TYPE_CURRENT ;
 int SHGetFolderPathA (int ,int ,int ,int ,char*) ;
 int S_OK ;
 int lstrcmpiA (char*,char*) ;
 int ok (int,char*,...) ;
 int pIsWow64Process (int ,int*) ;
 int * strstr (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHGetFolderPathA(void)
{
    static const BOOL is_win64 = sizeof(void *) > sizeof(int);
    BOOL is_wow64;
    char path[MAX_PATH];
    char path_x86[MAX_PATH];
    char path_key[MAX_PATH];
    HRESULT hr;
    HKEY key;

    if (!pIsWow64Process || !pIsWow64Process( GetCurrentProcess(), &is_wow64 )) is_wow64 = FALSE;

    hr = SHGetFolderPathA( 0, CSIDL_PROGRAM_FILES, 0, SHGFP_TYPE_CURRENT, path );
    ok( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    hr = SHGetFolderPathA( 0, CSIDL_PROGRAM_FILESX86, 0, SHGFP_TYPE_CURRENT, path_x86 );
    if (hr == E_FAIL)
    {
        win_skip( "Program Files (x86) not supported\n" );
        return;
    }
    ok( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    if (is_win64)
    {
        ok( lstrcmpiA( path, path_x86 ), "paths are identical '%s'\n", path );
        ok( strstr( path, "x86" ) == ((void*)0), "64-bit path '%s' contains x86\n", path );
        ok( strstr( path_x86, "x86" ) != ((void*)0), "32-bit path '%s' doesn't contain x86\n", path_x86 );
    }
    else
    {
        ok( !lstrcmpiA( path, path_x86 ), "paths differ '%s' != '%s'\n", path, path_x86 );
        if (is_wow64)
            ok( strstr( path, "x86" ) != ((void*)0), "32-bit path '%s' doesn't contain x86\n", path );
        else
            ok( strstr( path, "x86" ) == ((void*)0), "32-bit path '%s' contains x86\n", path );
    }
    if (!RegOpenKeyA( HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &key ))
    {
        DWORD type, count = sizeof(path_x86);
        if (!RegQueryValueExA( key, "ProgramFilesDir (x86)", ((void*)0), &type, (BYTE *)path_key, &count ))
        {
            ok( is_win64 || is_wow64, "ProgramFilesDir (x86) exists on 32-bit setup\n" );
            ok( !lstrcmpiA( path_key, path_x86 ), "paths differ '%s' != '%s'\n", path_key, path_x86 );
        }
        else ok( !is_win64 && !is_wow64, "ProgramFilesDir (x86) should exist on 64-bit setup\n" );
        RegCloseKey( key );
    }

    hr = SHGetFolderPathA( 0, CSIDL_PROGRAM_FILES_COMMON, 0, SHGFP_TYPE_CURRENT, path );
    ok( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    hr = SHGetFolderPathA( 0, CSIDL_PROGRAM_FILES_COMMONX86, 0, SHGFP_TYPE_CURRENT, path_x86 );
    if (hr == E_FAIL)
    {
        win_skip( "Common Files (x86) not supported\n" );
        return;
    }
    ok( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    if (is_win64)
    {
        ok( lstrcmpiA( path, path_x86 ), "paths are identical '%s'\n", path );
        ok( strstr( path, "x86" ) == ((void*)0), "64-bit path '%s' contains x86\n", path );
        ok( strstr( path_x86, "x86" ) != ((void*)0), "32-bit path '%s' doesn't contain x86\n", path_x86 );
    }
    else
    {
        ok( !lstrcmpiA( path, path_x86 ), "paths differ '%s' != '%s'\n", path, path_x86 );
        if (is_wow64)
            ok( strstr( path, "x86" ) != ((void*)0), "32-bit path '%s' doesn't contain x86\n", path );
        else
            ok( strstr( path, "x86" ) == ((void*)0), "32-bit path '%s' contains x86\n", path );
    }
    if (!RegOpenKeyA( HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &key ))
    {
        DWORD type, count = sizeof(path_x86);
        if (!RegQueryValueExA( key, "CommonFilesDir (x86)", ((void*)0), &type, (BYTE *)path_key, &count ))
        {
            ok( is_win64 || is_wow64, "CommonFilesDir (x86) exists on 32-bit setup\n" );
            ok( !lstrcmpiA( path_key, path_x86 ), "paths differ '%s' != '%s'\n", path_key, path_x86 );
        }
        else ok( !is_win64 && !is_wow64, "CommonFilesDir (x86) should exist on 64-bit setup\n" );
    }
}
