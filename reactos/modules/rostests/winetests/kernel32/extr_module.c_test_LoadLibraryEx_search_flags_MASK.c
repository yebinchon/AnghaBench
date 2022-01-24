#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tests ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int member_0; int member_1; int member_2; } ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/ * DLL_DIRECTORY_COOKIE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_MOD_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int LOAD_LIBRARY_SEARCH_APPLICATION_DIR ; 
 int LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR ; 
 int LOAD_LIBRARY_SEARCH_SYSTEM32 ; 
 int LOAD_LIBRARY_SEARCH_USER_DIRS ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,unsigned int) ; 
 int FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    static const struct
    {
        int add_dirs[4];
        int dll_dir;
        int expect;
    } tests[] =
    {
        { { 1, 2, 3 }, 4, 3 }, /* 0 */
        { { 1, 3, 2 }, 4, 2 },
        { { 3, 1 },    4, 1 },
        { { 5, 6 },    4, 4 },
        { { 5, 2 },    4, 2 },
        { { 0 },       4, 4 }, /* 5 */
        { { 0 },       0, 0 },
        { { 6, 5 },    5, 0 },
        { { 1, 1, 2 }, 0, 2 },
    };
    char *p, path[MAX_PATH], buf[MAX_PATH];
    WCHAR bufW[MAX_PATH];
    DLL_DIRECTORY_COOKIE cookies[4];
    unsigned int i, j, k;
    BOOL ret;
    HMODULE mod;

    if (!&pAddDllDirectory || !&pSetDllDirectoryA) return;

    FUNC6( sizeof(path), path );
    FUNC5( path, "tmp", 0, buf );
    FUNC1( buf );
    ret = FUNC0( buf, NULL );
    FUNC14( ret, "CreateDirectory failed err %u\n", FUNC3() );
    p = buf + FUNC19( buf );
    for (i = 1; i <= 6; i++)
    {
        FUNC18( p, "\\%u", i );
        ret = FUNC0( buf, NULL );
        FUNC14( ret, "CreateDirectory failed err %u\n", FUNC3() );
        if (i >= 5) continue;  /* dirs 5 and 6 are left empty */
        FUNC18( p, "\\%u\\winetestdll.dll", i );
        FUNC12( buf );
    }
    FUNC10( 0xdeadbeef );
    mod = FUNC7( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_APPLICATION_DIR );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_MOD_NOT_FOUND, "wrong error %u\n", FUNC3() );

    FUNC10( 0xdeadbeef );
    mod = FUNC7( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_USER_DIRS );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_MOD_NOT_FOUND || FUNC11(FUNC3() == ERROR_NOT_ENOUGH_MEMORY),
        "wrong error %u\n", FUNC3() );

    FUNC10( 0xdeadbeef );
    mod = FUNC7( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_SYSTEM32 );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_MOD_NOT_FOUND, "wrong error %u\n", FUNC3() );

    FUNC10( 0xdeadbeef );
    mod = FUNC7( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC3() );

    FUNC10( 0xdeadbeef );
    mod = FUNC7( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR | LOAD_LIBRARY_SEARCH_SYSTEM32 );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC3() );

    FUNC10( 0xdeadbeef );
    mod = FUNC7( "foo\\winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC3() );

    FUNC10( 0xdeadbeef );
    mod = FUNC7( "\\windows\\winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR );
    FUNC14( !mod, "LoadLibrary succeeded\n" );
    FUNC14( FUNC3() == ERROR_MOD_NOT_FOUND, "wrong error %u\n", FUNC3() );

    for (j = 0; j < sizeof(tests) / sizeof(tests[0]); j++)
    {
        for (k = 0; tests[j].add_dirs[k]; k++)
        {
            FUNC18( p, "\\%u", tests[j].add_dirs[k] );
            FUNC8( CP_ACP, 0, buf, -1, bufW, MAX_PATH );
            cookies[k] = FUNC15( bufW );
            FUNC14( cookies[k] != NULL, "failed to add %s\n", buf );
        }
        if (tests[j].dll_dir)
        {
            FUNC18( p, "\\%u", tests[j].dll_dir );
            FUNC17( buf );
        }
        else FUNC17( NULL );

        FUNC10( 0xdeadbeef );
        mod = FUNC7( "winetestdll.dll", 0, LOAD_LIBRARY_SEARCH_USER_DIRS );
        if (tests[j].expect)
        {
            FUNC14( mod != NULL, "%u: LoadLibrary failed err %u\n", j, FUNC3() );
            FUNC4( mod, path, MAX_PATH );
            FUNC18( p, "\\%u\\winetestdll.dll", tests[j].expect );
            FUNC14( !FUNC13( path, buf ), "%u: wrong module %s expected %s\n", j, path, buf );
        }
        else
        {
            FUNC14( !mod, "%u: LoadLibrary succeeded\n", j );
            FUNC14( FUNC3() == ERROR_MOD_NOT_FOUND || FUNC11(FUNC3() == ERROR_NOT_ENOUGH_MEMORY),
                "%u: wrong error %u\n", j, FUNC3() );
        }
        FUNC2( mod );

        for (k = 0; tests[j].add_dirs[k]; k++) FUNC16( cookies[k] );
    }

    for (i = 1; i <= 6; i++)
    {
        FUNC18( p, "\\%u\\winetestdll.dll", i );
        FUNC1( buf );
        FUNC18( p, "\\%u", i );
        FUNC9( buf );
    }
    *p = 0;
    FUNC9( buf );
}