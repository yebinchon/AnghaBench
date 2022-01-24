#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  nameW ;
typedef  int /*<<< orphan*/  WNDCLASSW ;
typedef  int /*<<< orphan*/  WNDCLASSA ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC1 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  comctl32_manifest ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19( const char *name )
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

        FUNC10(sizeof(path)/sizeof(path[0]), path);
        FUNC17(path, "comctl32_class.manifest");

        FUNC14(path, comctl32_manifest);
        context = FUNC15(path);
        ret = FUNC3(path);
        FUNC16(ret, "Failed to delete manifest file, error %d.\n", FUNC8());

        module = FUNC9( "comctl32" );
        FUNC16( !module, "comctl32 already loaded\n" );

        ret = FUNC0(context, &cookie);
        FUNC16(ret, "Failed to activate context.\n");

        /* Some systems load modules during context activation. In this case skip the rest of the test. */
        module = FUNC9( "comctl32" );
        FUNC16( !module || FUNC13(module != NULL) /* Vista/Win7 */, "comctl32 already loaded\n" );
        if (module)
        {
            FUNC18("Module loaded during context activation. Skipping tests.\n");
            goto skiptest;
        }

        ret = FUNC6( 0, name, &wcA );
        FUNC16( ret || FUNC13(!ret) /* WinXP */, "GetClassInfoA failed for %s\n", name );
        if (!ret)
            goto skiptest;

        FUNC11( CP_ACP, 0, name, -1, nameW, sizeof(nameW)/sizeof(WCHAR) );
        ret = FUNC7( 0, nameW, &wcW );
        FUNC16( ret, "GetClassInfoW failed for %s\n", name );
        module = FUNC9( "comctl32" );
        FUNC16( module != 0, "comctl32 not loaded\n" );
        FUNC5( module );
        module = FUNC9( "comctl32" );
        FUNC16( !module || FUNC13(module != NULL) /* Vista */, "comctl32 still loaded\n" );
        hwnd = FUNC1( name, "test", WS_OVERLAPPEDWINDOW, 0, 0, 10, 10, NULL, NULL, NULL, 0 );
        FUNC16( hwnd != 0, "failed to create window for %s\n", name );
        module = FUNC9( "comctl32" );
        FUNC16( module != 0, "comctl32 not loaded\n" );
        FUNC4( hwnd );

    skiptest:
        ret = FUNC2(0, cookie);
        FUNC16(ret, "Failed to deactivate context.\n");
        FUNC12(context);
    }
    else
    {
        module = FUNC9( "comctl32" );
        FUNC16( !module, "comctl32 already loaded\n" );
        ret = FUNC6( 0, name, &wcA );
        FUNC16( ret || FUNC13(!ret) /* <= winxp */, "GetClassInfoA failed for %s\n", name );
        if (!ret) return;
        FUNC11( CP_ACP, 0, name, -1, nameW, sizeof(nameW)/sizeof(WCHAR) );
        ret = FUNC7( 0, nameW, &wcW );
        FUNC16( ret, "GetClassInfoW failed for %s\n", name );
        module = FUNC9( "comctl32" );
        FUNC16( module != 0, "comctl32 not loaded\n" );
        FUNC5( module );
        module = FUNC9( "comctl32" );
        FUNC16( !module, "comctl32 still loaded\n" );
        hwnd = FUNC1( name, "test", WS_OVERLAPPEDWINDOW, 0, 0, 10, 10, NULL, NULL, NULL, 0 );
        FUNC16( hwnd != 0, "failed to create window for %s\n", name );
        module = FUNC9( "comctl32" );
        FUNC16( module != 0, "comctl32 not loaded\n" );
        FUNC4( hwnd );
    }
}