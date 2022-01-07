
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int nameW ;
typedef int WNDCLASSW ;
typedef int WNDCLASSA ;
typedef int WCHAR ;
typedef int ULONG_PTR ;
typedef scalar_t__ HWND ;
typedef int * HMODULE ;
typedef int HANDLE ;
typedef int BOOL ;


 int ActivateActCtx (int ,int *) ;
 int CP_ACP ;
 scalar_t__ CreateWindowA (char const*,char*,int ,int ,int ,int,int,int *,int *,int *,int ) ;
 int DeactivateActCtx (int ,int ) ;
 int DeleteFileA (char*) ;
 int DestroyWindow (scalar_t__) ;
 int FreeLibrary (int *) ;
 int GetClassInfoA (int ,char const*,int *) ;
 int GetClassInfoW (int ,int *,int *) ;
 int GetLastError () ;
 int * GetModuleHandleA (char*) ;
 int GetTempPathA (int,char*) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int ReleaseActCtx (int ) ;
 int WS_OVERLAPPEDWINDOW ;
 scalar_t__ broken (int) ;
 int comctl32_manifest ;
 int create_manifest_file (char*,int ) ;
 int create_test_actctx (char*) ;
 int ok (int,char*,...) ;
 int strcat (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_comctl32_class( const char *name )
{
    WNDCLASSA wcA;
    WNDCLASSW wcW;
    BOOL ret;
    HMODULE module;
    WCHAR nameW[20];
    HWND hwnd;

    if (name[0] == '!')
    {
        char path[MAX_PATH];
        ULONG_PTR cookie;
        HANDLE context;

        name++;

        GetTempPathA(sizeof(path)/sizeof(path[0]), path);
        strcat(path, "comctl32_class.manifest");

        create_manifest_file(path, comctl32_manifest);
        context = create_test_actctx(path);
        ret = DeleteFileA(path);
        ok(ret, "Failed to delete manifest file, error %d.\n", GetLastError());

        module = GetModuleHandleA( "comctl32" );
        ok( !module, "comctl32 already loaded\n" );

        ret = ActivateActCtx(context, &cookie);
        ok(ret, "Failed to activate context.\n");


        module = GetModuleHandleA( "comctl32" );
        ok( !module || broken(module != ((void*)0)) , "comctl32 already loaded\n" );
        if (module)
        {
            win_skip("Module loaded during context activation. Skipping tests.\n");
            goto skiptest;
        }

        ret = GetClassInfoA( 0, name, &wcA );
        ok( ret || broken(!ret) , "GetClassInfoA failed for %s\n", name );
        if (!ret)
            goto skiptest;

        MultiByteToWideChar( CP_ACP, 0, name, -1, nameW, sizeof(nameW)/sizeof(WCHAR) );
        ret = GetClassInfoW( 0, nameW, &wcW );
        ok( ret, "GetClassInfoW failed for %s\n", name );
        module = GetModuleHandleA( "comctl32" );
        ok( module != 0, "comctl32 not loaded\n" );
        FreeLibrary( module );
        module = GetModuleHandleA( "comctl32" );
        ok( !module || broken(module != ((void*)0)) , "comctl32 still loaded\n" );
        hwnd = CreateWindowA( name, "test", WS_OVERLAPPEDWINDOW, 0, 0, 10, 10, ((void*)0), ((void*)0), ((void*)0), 0 );
        ok( hwnd != 0, "failed to create window for %s\n", name );
        module = GetModuleHandleA( "comctl32" );
        ok( module != 0, "comctl32 not loaded\n" );
        DestroyWindow( hwnd );

    skiptest:
        ret = DeactivateActCtx(0, cookie);
        ok(ret, "Failed to deactivate context.\n");
        ReleaseActCtx(context);
    }
    else
    {
        module = GetModuleHandleA( "comctl32" );
        ok( !module, "comctl32 already loaded\n" );
        ret = GetClassInfoA( 0, name, &wcA );
        ok( ret || broken(!ret) , "GetClassInfoA failed for %s\n", name );
        if (!ret) return;
        MultiByteToWideChar( CP_ACP, 0, name, -1, nameW, sizeof(nameW)/sizeof(WCHAR) );
        ret = GetClassInfoW( 0, nameW, &wcW );
        ok( ret, "GetClassInfoW failed for %s\n", name );
        module = GetModuleHandleA( "comctl32" );
        ok( module != 0, "comctl32 not loaded\n" );
        FreeLibrary( module );
        module = GetModuleHandleA( "comctl32" );
        ok( !module, "comctl32 still loaded\n" );
        hwnd = CreateWindowA( name, "test", WS_OVERLAPPEDWINDOW, 0, 0, 10, 10, ((void*)0), ((void*)0), ((void*)0), 0 );
        ok( hwnd != 0, "failed to create window for %s\n", name );
        module = GetModuleHandleA( "comctl32" );
        ok( module != 0, "comctl32 not loaded\n" );
        DestroyWindow( hwnd );
    }
}
