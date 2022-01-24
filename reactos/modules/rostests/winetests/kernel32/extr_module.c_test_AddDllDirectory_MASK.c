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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * DLL_DIRECTORY_COOKIE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR tmpW[] = {'t','m','p',0};
    static const WCHAR dotW[] = {'.','\\','.',0};
    static const WCHAR rootW[] = {'\\',0};
    WCHAR path[MAX_PATH], buf[MAX_PATH];
    DLL_DIRECTORY_COOKIE cookie;
    BOOL ret;

    if (!&pAddDllDirectory || !&pRemoveDllDirectory)
    {
        FUNC10( "AddDllDirectory not available\n" );
        return;
    }

    buf[0] = '\0';
    FUNC3( sizeof(path)/sizeof(path[0]), path );
    ret = FUNC2( path, tmpW, 0, buf );
    FUNC7( ret, "GetTempFileName failed err %u\n", FUNC1() );
    FUNC5( 0xdeadbeef );
    cookie = FUNC8( buf );
    FUNC7( cookie != NULL, "AddDllDirectory failed err %u\n", FUNC1() );
    FUNC5( 0xdeadbeef );
    ret = FUNC9( cookie );
    FUNC7( ret, "RemoveDllDirectory failed err %u\n", FUNC1() );

    FUNC0( buf );
    FUNC5( 0xdeadbeef );
    cookie = FUNC8( buf );
    FUNC7( !cookie, "AddDllDirectory succeeded\n" );
    FUNC7( FUNC1() == ERROR_FILE_NOT_FOUND, "wrong error %u\n", FUNC1() );
    cookie = FUNC8( dotW );
    FUNC7( !cookie, "AddDllDirectory succeeded\n" );
    FUNC7( FUNC1() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC1() );
    cookie = FUNC8( rootW );
    FUNC7( cookie != NULL, "AddDllDirectory failed err %u\n", FUNC1() );
    FUNC5( 0xdeadbeef );
    ret = FUNC9( cookie );
    FUNC7( ret, "RemoveDllDirectory failed err %u\n", FUNC1() );
    FUNC4( buf, MAX_PATH );
    FUNC6( buf + 2, tmpW );
    cookie = FUNC8( buf );
    FUNC7( !cookie, "AddDllDirectory succeeded\n" );
    FUNC7( FUNC1() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC1() );
}