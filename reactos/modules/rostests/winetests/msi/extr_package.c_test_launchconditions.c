
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_INSTALL_FAILURE ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_SUCCESS ;
 int INSTALLUILEVEL_NONE ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDoActionA (int ,char*) ;
 int MsiSetInternalUI (int ,int *) ;
 scalar_t__ MsiSetPropertyA (int ,char*,char*) ;
 int add_launchcondition_entry (int ,char*) ;
 int create_launchcondition_table (int ) ;
 int create_package_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int ,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_launchconditions(void)
{
    MSIHANDLE hpkg;
    MSIHANDLE hdb;
    UINT r;

    MsiSetInternalUI(INSTALLUILEVEL_NONE, ((void*)0));

    hdb = create_package_db();
    ok( hdb, "failed to create package database\n" );

    create_launchcondition_table( hdb );

    add_launchcondition_entry( hdb, "'X = \"1\"', 'one'" );


    add_launchcondition_entry( hdb, "'X != \"1\"', 'one'" );

    r = package_from_db( hdb, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "failed to create package %u\n", r );

    MsiCloseHandle( hdb );

    r = MsiSetPropertyA( hpkg, "X", "1" );
    ok( r == ERROR_SUCCESS, "failed to set property\n" );

    MsiSetInternalUI(INSTALLUILEVEL_NONE, ((void*)0));


    r = MsiDoActionA( hpkg, "LaunchConditions" );
    ok( r == ERROR_SUCCESS, "cost init failed\n" );


    r = MsiSetPropertyA( hpkg, "X", "2" );
    ok( r == ERROR_SUCCESS, "failed to set property\n" );

    r = MsiDoActionA( hpkg, "LaunchConditions" );
    ok( r == ERROR_INSTALL_FAILURE, "Expected ERROR_INSTALL_FAILURE, got %d\n", r );

    MsiCloseHandle( hpkg );
    DeleteFileA( msifile );
}
