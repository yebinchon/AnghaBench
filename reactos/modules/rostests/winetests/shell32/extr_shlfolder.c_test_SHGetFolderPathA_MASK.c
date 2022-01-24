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
typedef  int /*<<< orphan*/  path_x86 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_PROGRAM_FILES ; 
 int /*<<< orphan*/  CSIDL_PROGRAM_FILESX86 ; 
 int /*<<< orphan*/  CSIDL_PROGRAM_FILES_COMMON ; 
 int /*<<< orphan*/  CSIDL_PROGRAM_FILES_COMMONX86 ; 
 int /*<<< orphan*/  E_FAIL ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const BOOL is_win64 = sizeof(void *) > sizeof(int);
    BOOL is_wow64;
    char path[MAX_PATH];
    char path_x86[MAX_PATH];
    char path_key[MAX_PATH];
    HRESULT hr;
    HKEY key;

    if (!&pIsWow64Process || !FUNC7( FUNC0(), &is_wow64 )) is_wow64 = FALSE;

    hr = FUNC4( 0, CSIDL_PROGRAM_FILES, 0, SHGFP_TYPE_CURRENT, path );
    FUNC6( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    hr = FUNC4( 0, CSIDL_PROGRAM_FILESX86, 0, SHGFP_TYPE_CURRENT, path_x86 );
    if (hr == E_FAIL)
    {
        FUNC9( "Program Files (x86) not supported\n" );
        return;
    }
    FUNC6( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    if (is_win64)
    {
        FUNC6( FUNC5( path, path_x86 ), "paths are identical '%s'\n", path );
        FUNC6( FUNC8( path, "x86" ) == NULL, "64-bit path '%s' contains x86\n", path );
        FUNC6( FUNC8( path_x86, "x86" ) != NULL, "32-bit path '%s' doesn't contain x86\n", path_x86 );
    }
    else
    {
        FUNC6( !FUNC5( path, path_x86 ), "paths differ '%s' != '%s'\n", path, path_x86 );
        if (is_wow64)
            FUNC6( FUNC8( path, "x86" ) != NULL, "32-bit path '%s' doesn't contain x86\n", path );
        else
            FUNC6( FUNC8( path, "x86" ) == NULL, "32-bit path '%s' contains x86\n", path );
    }
    if (!FUNC2( HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &key ))
    {
        DWORD type, count = sizeof(path_x86);
        if (!FUNC3( key, "ProgramFilesDir (x86)", NULL, &type, (BYTE *)path_key, &count ))
        {
            FUNC6( is_win64 || is_wow64, "ProgramFilesDir (x86) exists on 32-bit setup\n" );
            FUNC6( !FUNC5( path_key, path_x86 ), "paths differ '%s' != '%s'\n", path_key, path_x86 );
        }
        else FUNC6( !is_win64 && !is_wow64, "ProgramFilesDir (x86) should exist on 64-bit setup\n" );
        FUNC1( key );
    }

    hr = FUNC4( 0, CSIDL_PROGRAM_FILES_COMMON, 0, SHGFP_TYPE_CURRENT, path );
    FUNC6( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    hr = FUNC4( 0, CSIDL_PROGRAM_FILES_COMMONX86, 0, SHGFP_TYPE_CURRENT, path_x86 );
    if (hr == E_FAIL)
    {
        FUNC9( "Common Files (x86) not supported\n" );
        return;
    }
    FUNC6( hr == S_OK, "SHGetFolderPathA failed %x\n", hr );
    if (is_win64)
    {
        FUNC6( FUNC5( path, path_x86 ), "paths are identical '%s'\n", path );
        FUNC6( FUNC8( path, "x86" ) == NULL, "64-bit path '%s' contains x86\n", path );
        FUNC6( FUNC8( path_x86, "x86" ) != NULL, "32-bit path '%s' doesn't contain x86\n", path_x86 );
    }
    else
    {
        FUNC6( !FUNC5( path, path_x86 ), "paths differ '%s' != '%s'\n", path, path_x86 );
        if (is_wow64)
            FUNC6( FUNC8( path, "x86" ) != NULL, "32-bit path '%s' doesn't contain x86\n", path );
        else
            FUNC6( FUNC8( path, "x86" ) == NULL, "32-bit path '%s' contains x86\n", path );
    }
    if (!FUNC2( HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Windows\\CurrentVersion", &key ))
    {
        DWORD type, count = sizeof(path_x86);
        if (!FUNC3( key, "CommonFilesDir (x86)", NULL, &type, (BYTE *)path_key, &count ))
        {
            FUNC6( is_win64 || is_wow64, "CommonFilesDir (x86) exists on 32-bit setup\n" );
            FUNC6( !FUNC5( path_key, path_x86 ), "paths differ '%s' != '%s'\n", path_key, path_x86 );
        }
        else FUNC6( !is_win64 && !is_wow64, "CommonFilesDir (x86) should exist on 64-bit setup\n" );
    }
}