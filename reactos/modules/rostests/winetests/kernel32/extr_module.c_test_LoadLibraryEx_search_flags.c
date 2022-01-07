
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tests ;
typedef int path ;
typedef int WCHAR ;
struct TYPE_2__ {int member_0; int member_1; int member_2; } ;
typedef int * HMODULE ;
typedef int * DLL_DIRECTORY_COOKIE ;
typedef int BOOL ;


 int CP_ACP ;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_MOD_NOT_FOUND ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FreeLibrary (int *) ;
 int GetLastError () ;
 int GetModuleFileNameA (int *,char*,int) ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 int LOAD_LIBRARY_SEARCH_APPLICATION_DIR ;
 int LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR ;
 int LOAD_LIBRARY_SEARCH_SYSTEM32 ;
 int LOAD_LIBRARY_SEARCH_USER_DIRS ;
 int * LoadLibraryExA (char*,int ,int) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int RemoveDirectoryA (char*) ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int create_test_dll (char*) ;
 int lstrcmpiA (char*,char*) ;
 int ok (int,char*,...) ;
 int * pAddDllDirectory (int *) ;
 int pRemoveDllDirectory (int *) ;
 int pSetDllDirectoryA (char*) ;
 int sprintf (char*,char*,unsigned int) ;
 int strlen (char*) ;

__attribute__((used)) static void test_LoadLibraryEx_search_flags(void)
{
    static const struct
    {
        int add_dirs[4];
        int dll_dir;
        int expect;
    } tests[] =
    {
        { { 1, 2, 3 }, 4, 3 },
        { { 1, 3, 2 }, 4, 2 },
        { { 3, 1 }, 4, 1 },
        { { 5, 6 }, 4, 4 },
        { { 5, 2 }, 4, 2 },
        { { 0 }, 4, 4 },
        { { 0 }, 0, 0 },
        { { 6, 5 }, 5, 0 },
        { { 1, 1, 2 }, 0, 2 },
    };
    char *p, path[MAX_PATH], buf[MAX_PATH];
    WCHAR bufW[MAX_PATH];
    DLL_DIRECTORY_COOKIE cookies[4];
    unsigned int i, j, k;
    BOOL ret;
    HMODULE mod;

    if (!pAddDllDirectory || !pSetDllDirectoryA) return;

    GetTempPathA( sizeof(path), path );
    GetTempFileNameA( path, "tmp", 0, buf );
    DeleteFileA( buf );
    ret = CreateDirectoryA( buf, ((void*)0) );
    ok( ret, "CreateDirectory failed err %u\n", GetLastError() );
    p = buf + strlen( buf );
    for (i = 1; i <= 6; i++)
    {
        sprintf( p, "\\%u", i );
        ret = CreateDirectoryA( buf, ((void*)0) );
        ok( ret, "CreateDirectory failed err %u\n", GetLastError() );
        if (i >= 5) continue;
        sprintf( p, "\\%u\\winetestdll.dll", i );
        create_test_dll( buf );
    }
    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_APPLICATION_DIR );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_MOD_NOT_FOUND, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_USER_DIRS );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_MOD_NOT_FOUND || broken(GetLastError() == ERROR_NOT_ENOUGH_MEMORY),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_SYSTEM32 );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_MOD_NOT_FOUND, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR | LOAD_LIBRARY_SEARCH_SYSTEM32 );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "foo\\winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    mod = LoadLibraryExA( "\\windows\\winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR );
    ok( !mod, "LoadLibrary succeeded\n" );
    ok( GetLastError() == ERROR_MOD_NOT_FOUND, "wrong error %u\n", GetLastError() );

    for (j = 0; j < sizeof(tests) / sizeof(tests[0]); j++)
    {
        for (k = 0; tests[j].add_dirs[k]; k++)
        {
            sprintf( p, "\\%u", tests[j].add_dirs[k] );
            MultiByteToWideChar( CP_ACP, 0, buf, -1, bufW, MAX_PATH );
            cookies[k] = pAddDllDirectory( bufW );
            ok( cookies[k] != ((void*)0), "failed to add %s\n", buf );
        }
        if (tests[j].dll_dir)
        {
            sprintf( p, "\\%u", tests[j].dll_dir );
            pSetDllDirectoryA( buf );
        }
        else pSetDllDirectoryA( ((void*)0) );

        SetLastError( 0xdeadbeef );
        mod = LoadLibraryExA( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_USER_DIRS );
        if (tests[j].expect)
        {
            ok( mod != ((void*)0), "%u: LoadLibrary failed err %u\n", j, GetLastError() );
            GetModuleFileNameA( mod, path, MAX_PATH );
            sprintf( p, "\\%u\\winetestdll.dll", tests[j].expect );
            ok( !lstrcmpiA( path, buf ), "%u: wrong module %s expected %s\n", j, path, buf );
        }
        else
        {
            ok( !mod, "%u: LoadLibrary succeeded\n", j );
            ok( GetLastError() == ERROR_MOD_NOT_FOUND || broken(GetLastError() == ERROR_NOT_ENOUGH_MEMORY),
                "%u: wrong error %u\n", j, GetLastError() );
        }
        FreeLibrary( mod );

        for (k = 0; tests[j].add_dirs[k]; k++) pRemoveDllDirectory( cookies[k] );
    }

    for (i = 1; i <= 6; i++)
    {
        sprintf( p, "\\%u\\winetestdll.dll", i );
        DeleteFileA( buf );
        sprintf( p, "\\%u", i );
        RemoveDirectoryA( buf );
    }
    *p = 0;
    RemoveDirectoryA( buf );
}
