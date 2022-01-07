
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prop ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BYTE ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int INSTALLUILEVEL_NONE ;
 int KEY_ALL_ACCESS ;
 int MAX_PATH ;
 int MsiCloseHandle (int) ;
 scalar_t__ MsiDoActionA (int,char*) ;
 scalar_t__ MsiGetPropertyA (int,char*,int *,int*) ;
 int MsiSetInternalUI (int ,int *) ;
 int REG_EXPAND_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExA (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegSetValueExA (int ,int *,int ,int ,int const*,scalar_t__) ;
 int add_appsearch_entry (int,char*) ;
 int add_drlocator_entry (int,char*) ;
 int add_reglocator_entry (int,char*,int,char*,char*,int) ;
 int add_signature_entry (int,char*) ;
 int create_appsearch_table (int) ;
 int create_drlocator_table (int) ;
 int create_package_db () ;
 int create_reglocator_table (int) ;
 int create_signature_table (int) ;
 scalar_t__ lstrlenA (int *) ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int,int*) ;
 int skip (char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void test_appsearch(void)
{
    MSIHANDLE hpkg;
    UINT r;
    MSIHANDLE hdb;
    CHAR prop[MAX_PATH];
    DWORD size;
    HKEY hkey;
    const char reg_expand_value[] = "%systemroot%\\system32\\notepad.exe";

    hdb = create_package_db();
    ok ( hdb, "failed to create package database\n" );

    create_appsearch_table( hdb );
    add_appsearch_entry( hdb, "'WEBBROWSERPROG', 'NewSignature1'" );
    add_appsearch_entry( hdb, "'NOTEPAD', 'NewSignature2'" );
    add_appsearch_entry( hdb, "'REGEXPANDVAL', 'NewSignature3'" );

    create_reglocator_table( hdb );
    add_reglocator_entry( hdb, "NewSignature1", 0, "htmlfile\\shell\\open\\command", "", 1 );

    r = RegCreateKeyExA(HKEY_CURRENT_USER, "Software\\Winetest_msi", 0, ((void*)0), 0, KEY_ALL_ACCESS, ((void*)0), &hkey, ((void*)0));
    ok( r == ERROR_SUCCESS, "Could not create key: %d.\n", r );
    r = RegSetValueExA(hkey, ((void*)0), 0, REG_EXPAND_SZ, (const BYTE*)reg_expand_value, strlen(reg_expand_value) + 1);
    ok( r == ERROR_SUCCESS, "Could not set key value: %d.\n", r);
    RegCloseKey(hkey);
    add_reglocator_entry( hdb, "NewSignature3", 1, "Software\\Winetest_msi", "", 1 );

    create_drlocator_table( hdb );
    add_drlocator_entry( hdb, "'NewSignature2', 0, 'c:\\windows\\system32', 0" );

    create_signature_table( hdb );
    add_signature_entry( hdb, "'NewSignature1', 'FileName', '', '', '', '', '', '', ''" );
    add_signature_entry( hdb, "'NewSignature2', 'NOTEPAD.EXE|notepad.exe', '', '', '', '', '', '', ''" );
    add_signature_entry( hdb, "'NewSignature3', 'NOTEPAD.EXE|notepad.exe', '', '', '', '', '', '', ''" );

    r = package_from_db( hdb, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "failed to create package %u\n", r );
    MsiCloseHandle( hdb );
    if (r != ERROR_SUCCESS)
        goto done;

    MsiSetInternalUI(INSTALLUILEVEL_NONE, ((void*)0));

    r = MsiDoActionA( hpkg, "AppSearch" );
    ok( r == ERROR_SUCCESS, "AppSearch failed: %d\n", r);

    size = sizeof(prop);
    r = MsiGetPropertyA( hpkg, "WEBBROWSERPROG", prop, &size );
    ok( r == ERROR_SUCCESS, "get property failed: %d\n", r);
    ok( lstrlenA(prop) != 0, "Expected non-zero length\n");

    size = sizeof(prop);
    r = MsiGetPropertyA( hpkg, "NOTEPAD", prop, &size );
    ok( r == ERROR_SUCCESS, "get property failed: %d\n", r);

    size = sizeof(prop);
    r = MsiGetPropertyA( hpkg, "REGEXPANDVAL", prop, &size );
    ok( r == ERROR_SUCCESS, "get property failed: %d\n", r);
    ok( lstrlenA(prop) != 0, "Expected non-zero length\n");

done:
    MsiCloseHandle( hpkg );
    DeleteFileA(msifile);
    RegDeleteKeyA(HKEY_CURRENT_USER, "Software\\Winetest_msi");
}
