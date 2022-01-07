
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;
typedef int CHAR ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_SUCCESS ;
 int INSTALLUILEVEL_NONE ;
 int MAX_PATH ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDoActionA (int ,char*) ;
 scalar_t__ MsiGetPropertyA (int ,char*,int *,int*) ;
 int MsiSetInternalUI (int ,int *) ;
 int add_ccpsearch_entry (int ,char*) ;
 int add_drlocator_entry (int ,char*) ;
 int add_reglocator_entry (int ,char*,int ,char*,char*,int) ;
 int create_ccpsearch_table (int ) ;
 int create_drlocator_table (int ) ;
 int create_package_db () ;
 int create_reglocator_table (int ) ;
 int create_signature_table (int ) ;
 int lstrcmpA (int *,char*) ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int ,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_ccpsearch(void)
{
    MSIHANDLE hdb, hpkg;
    CHAR prop[MAX_PATH];
    DWORD size = MAX_PATH;
    UINT r;

    hdb = create_package_db();
    ok(hdb, "failed to create package database\n");

    create_ccpsearch_table(hdb);
    add_ccpsearch_entry(hdb, "'CCP_random'");
    add_ccpsearch_entry(hdb, "'RMCCP_random'");

    create_reglocator_table(hdb);
    add_reglocator_entry(hdb, "CCP_random", 0, "htmlfile\\shell\\open\\nonexistent", "", 1);

    create_drlocator_table(hdb);
    add_drlocator_entry(hdb, "'RMCCP_random', '', 'C:\\', '0'");

    create_signature_table(hdb);

    r = package_from_db(hdb, &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok(r == ERROR_SUCCESS, "failed to create package %u\n", r);

    MsiCloseHandle(hdb);

    MsiSetInternalUI(INSTALLUILEVEL_NONE, ((void*)0));

    r = MsiDoActionA(hpkg, "CCPSearch");
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiGetPropertyA(hpkg, "CCP_Success", prop, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(prop, "1"), "Expected 1, got %s\n", prop);

    MsiCloseHandle(hpkg);
    DeleteFileA(msifile);
}
