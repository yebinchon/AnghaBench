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
typedef  int /*<<< orphan*/  short_path ;
typedef  char WCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_NAME ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const WCHAR extended_prefix[] = {'\\','\\','?','\\',0};
    static const WCHAR test_path[] = { 'L', 'o', 'n', 'g', 'D', 'i', 'r', 'e', 'c', 't', 'o', 'r', 'y', 'N', 'a', 'm', 'e',  0 };
    static const WCHAR name[] = { 't', 'e', 's', 't', 0 };
    static const WCHAR backSlash[] = { '\\', 0 };
    static const WCHAR a_bcdeW[] = {'a','.','b','c','d','e',0};
    static const WCHAR wildW[] = { '*',0 };
    WCHAR path[MAX_PATH], tmppath[MAX_PATH], *ptr;
    WCHAR short_path[MAX_PATH];
    DWORD length;
    HANDLE file;
    int ret;

    FUNC8(0xdeadbeef);
    FUNC6( MAX_PATH, tmppath );
    if (FUNC4() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC13("GetTempPathW is not implemented\n");
        return;
    }

    FUNC10( path, tmppath );
    FUNC9( path, test_path );
    FUNC9( path, backSlash );
    ret = FUNC1( path, NULL );
    FUNC12( ret, "Directory was not created. LastError = %d\n", FUNC4() );

    /* Starting a main part of test */

    /* extended path \\?\C:\path\ */
    FUNC10( path, extended_prefix );
    FUNC9( path, tmppath );
    FUNC9( path, test_path );
    FUNC9( path, backSlash );
    short_path[0] = 0;
    length = FUNC5( path, short_path, sizeof(short_path) / sizeof(*short_path) );
    FUNC12( length, "GetShortPathNameW returned 0.\n" );

    FUNC10( path, tmppath );
    FUNC9( path, test_path );
    FUNC9( path, backSlash );
    length = FUNC5( path, short_path, 0 );
    FUNC12( length, "GetShortPathNameW returned 0.\n" );
    ret = FUNC5( path, short_path, length );
    FUNC12( ret && ret == length-1, "GetShortPathNameW returned 0.\n" );

    FUNC9( short_path, name );

    /* GetShortPathName for a non-existent short file name should fail */
    FUNC8(0xdeadbeef);
    length = FUNC5( short_path, path, 0 );
    FUNC12(!length, "GetShortPathNameW should fail\n");
    FUNC12(FUNC4() == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC4());

    file = FUNC2( short_path, GENERIC_READ|GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL );
    FUNC12( file != INVALID_HANDLE_VALUE, "File was not created.\n" );
    FUNC0( file );
    ret = FUNC3( short_path );
    FUNC12( ret, "Cannot delete file.\n" );

    ptr = path + FUNC11(path);
    FUNC10( ptr, a_bcdeW);
    file = FUNC2( path, GENERIC_READ|GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL );
    FUNC12( file != INVALID_HANDLE_VALUE, "File was not created.\n" );
    FUNC0( file );

    length = FUNC5( path, short_path, sizeof(short_path)/sizeof(*short_path) );
    FUNC12( length, "GetShortPathNameW failed: %u.\n", FUNC4() );

    FUNC10(ptr, wildW);
    FUNC8(0xdeadbeef);
    length = FUNC5( path, short_path, sizeof(short_path)/sizeof(*short_path) );
    FUNC12(!length, "GetShortPathNameW should fail\n");
    FUNC12(FUNC4() == ERROR_INVALID_NAME, "wrong error %d\n", FUNC4());

    FUNC10(ptr, a_bcdeW);
    ret = FUNC3( path );
    FUNC12( ret, "Cannot delete file.\n" );
    *ptr = 0;

    /* End test */
    ret = FUNC7( path );
    FUNC12( ret, "Cannot delete directory.\n" );
}