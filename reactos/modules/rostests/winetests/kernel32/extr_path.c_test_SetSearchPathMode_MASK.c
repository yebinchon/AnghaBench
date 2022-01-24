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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE ; 
 int BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE ; 
 int BASE_SEARCH_PATH_PERMANENT ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void FUNC18(void)
{
    BOOL ret;
    char orig[MAX_PATH], buf[MAX_PATH], dir[MAX_PATH], expect[MAX_PATH];
    HANDLE handle;

    if (!&pSetSearchPathMode)
    {
        FUNC17( "SetSearchPathMode isn't available\n" );
        return;
    }
    FUNC4( MAX_PATH, orig );
    FUNC8( MAX_PATH, buf );
    FUNC7( buf, "path", 0, dir );
    FUNC3( dir );
    FUNC1( dir, NULL );
    ret = FUNC11( dir );
    FUNC14( ret, "failed to switch to %s\n", dir );
    if (!ret)
    {
        FUNC9( dir );
        return;
    }

    handle = FUNC2( "kernel32.dll", GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, 0 );
    FUNC0( handle );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( 0 );
    FUNC14( !ret, "SetSearchPathMode succeeded\n" );
    FUNC14( FUNC5() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( 0x80 );
    FUNC14( !ret, "SetSearchPathMode succeeded\n" );
    FUNC14( FUNC5() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_PERMANENT );
    FUNC14( !ret, "SetSearchPathMode succeeded\n" );
    FUNC14( FUNC5() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC10( NULL, "kernel32.dll", NULL, MAX_PATH, buf, NULL );
    FUNC14( ret, "SearchPathA failed err %u\n", FUNC5() );
    FUNC4( MAX_PATH, expect );
    FUNC16( expect, "\\kernel32.dll" );
    FUNC14( !FUNC13( buf, expect ), "found %s expected %s\n", buf, expect );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE );
    FUNC14( ret, "SetSearchPathMode failed err %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC10( NULL, "kernel32.dll", NULL, MAX_PATH, buf, NULL );
    FUNC14( ret, "SearchPathA failed err %u\n", FUNC5() );
    FUNC6( expect, MAX_PATH );
    FUNC16( expect, "\\kernel32.dll" );
    FUNC14( !FUNC13( buf, expect ), "found %s expected %s\n", buf, expect );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE );
    FUNC14( ret, "SetSearchPathMode failed err %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC10( NULL, "kernel32.dll", NULL, MAX_PATH, buf, NULL );
    FUNC14( ret, "SearchPathA failed err %u\n", FUNC5() );
    FUNC4( MAX_PATH, expect );
    FUNC16( expect, "\\kernel32.dll" );
    FUNC14( !FUNC13( buf, expect ), "found %s expected %s\n", buf, expect );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE | BASE_SEARCH_PATH_PERMANENT );
    FUNC14( !ret, "SetSearchPathMode succeeded\n" );
    FUNC14( FUNC5() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE | BASE_SEARCH_PATH_PERMANENT );
    FUNC14( ret, "SetSearchPathMode failed err %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE );
    FUNC14( !ret, "SetSearchPathMode succeeded\n" );
    FUNC14( FUNC5() == ERROR_ACCESS_DENIED, "wrong error %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE );
    FUNC14( !ret, "SetSearchPathMode succeeded\n" );
    FUNC14( FUNC5() == ERROR_ACCESS_DENIED, "wrong error %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC15( BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE | BASE_SEARCH_PATH_PERMANENT );
    FUNC14( ret, "SetSearchPathMode failed err %u\n", FUNC5() );

    FUNC12( 0xdeadbeef );
    ret = FUNC10( NULL, "kernel32.dll", NULL, MAX_PATH, buf, NULL );
    FUNC14( ret, "SearchPathA failed err %u\n", FUNC5() );
    FUNC6( expect, MAX_PATH );
    FUNC16( expect, "\\kernel32.dll" );
    FUNC14( !FUNC13( buf, expect ), "found %s expected %s\n", buf, expect );

    FUNC3( "kernel32.dll" );
    FUNC11( orig );
    FUNC9( dir );
}