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
typedef  int /*<<< orphan*/  prop ;
typedef  scalar_t__ UINT ;
typedef  int MSIHANDLE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  INSTALLUILEVEL_NONE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int,char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_EXPAND_SZ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msifile ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 scalar_t__ FUNC20 (int,int*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char const*) ; 

__attribute__((used)) static void FUNC23(void)
{
    MSIHANDLE hpkg;
    UINT r;
    MSIHANDLE hdb;
    CHAR prop[MAX_PATH];
    DWORD size;
    HKEY hkey;
    const char reg_expand_value[] = "%systemroot%\\system32\\notepad.exe";

    hdb = FUNC15();
    FUNC19 ( hdb, "failed to create package database\n" );

    FUNC13( hdb );
    FUNC9( hdb, "'WEBBROWSERPROG', 'NewSignature1'" );
    FUNC9( hdb, "'NOTEPAD', 'NewSignature2'" );
    FUNC9( hdb, "'REGEXPANDVAL', 'NewSignature3'" );

    FUNC16( hdb );
    FUNC11( hdb, "NewSignature1", 0, "htmlfile\\shell\\open\\command", "", 1 );

    r = FUNC6(HKEY_CURRENT_USER, "Software\\Winetest_msi", 0, NULL, 0, KEY_ALL_ACCESS, NULL, &hkey, NULL);
    FUNC19( r == ERROR_SUCCESS, "Could not create key: %d.\n", r );
    r = FUNC8(hkey, NULL, 0, REG_EXPAND_SZ, (const BYTE*)reg_expand_value, FUNC22(reg_expand_value) + 1);
    FUNC19( r == ERROR_SUCCESS, "Could not set key value: %d.\n", r);
    FUNC5(hkey);
    FUNC11( hdb, "NewSignature3", 1, "Software\\Winetest_msi", "", 1 );

    FUNC14( hdb );
    FUNC10( hdb, "'NewSignature2', 0, 'c:\\windows\\system32', 0" );

    FUNC17( hdb );
    FUNC12( hdb, "'NewSignature1', 'FileName', '', '', '', '', '', '', ''" );
    FUNC12( hdb, "'NewSignature2', 'NOTEPAD.EXE|notepad.exe', '', '', '', '', '', '', ''" );
    FUNC12( hdb, "'NewSignature3', 'NOTEPAD.EXE|notepad.exe', '', '', '', '', '', '', ''" );

    r = FUNC20( hdb, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        FUNC21("Not enough rights to perform tests\n");
        FUNC0(msifile);
        return;
    }
    FUNC19( r == ERROR_SUCCESS, "failed to create package %u\n", r );
    FUNC1( hdb );
    if (r != ERROR_SUCCESS)
        goto done;

    FUNC4(INSTALLUILEVEL_NONE, NULL);

    r = FUNC2( hpkg, "AppSearch" );
    FUNC19( r == ERROR_SUCCESS, "AppSearch failed: %d\n", r);

    size = sizeof(prop);
    r = FUNC3( hpkg, "WEBBROWSERPROG", prop, &size );
    FUNC19( r == ERROR_SUCCESS, "get property failed: %d\n", r);
    FUNC19( FUNC18(prop) != 0, "Expected non-zero length\n");

    size = sizeof(prop);
    r = FUNC3( hpkg, "NOTEPAD", prop, &size );
    FUNC19( r == ERROR_SUCCESS, "get property failed: %d\n", r);

    size = sizeof(prop);
    r = FUNC3( hpkg, "REGEXPANDVAL", prop, &size );
    FUNC19( r == ERROR_SUCCESS, "get property failed: %d\n", r);
    FUNC19( FUNC18(prop) != 0, "Expected non-zero length\n");

done:
    FUNC1( hpkg );
    FUNC0(msifile);
    FUNC7(HKEY_CURRENT_USER, "Software\\Winetest_msi");
}