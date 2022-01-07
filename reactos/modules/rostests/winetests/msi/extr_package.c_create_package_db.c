
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int MSIDBOPEN_CREATE ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiOpenDatabaseW (int ,int ,int *) ;
 int msifile ;
 int msifileW ;
 int ok (int,char*,...) ;
 scalar_t__ run_query (int ,char*) ;
 scalar_t__ set_summary_info (int ) ;

__attribute__((used)) static MSIHANDLE create_package_db(void)
{
    MSIHANDLE hdb = 0;
    UINT res;

    DeleteFileA(msifile);


    res = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb );
    ok( res == ERROR_SUCCESS , "Failed to create database %u\n", res );
    if( res != ERROR_SUCCESS )
        return hdb;

    res = MsiDatabaseCommit( hdb );
    ok( res == ERROR_SUCCESS , "Failed to commit database\n" );

    res = set_summary_info(hdb);
    ok( res == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", res);

    res = run_query( hdb,
            "CREATE TABLE `Directory` ( "
            "`Directory` CHAR(255) NOT NULL, "
            "`Directory_Parent` CHAR(255), "
            "`DefaultDir` CHAR(255) NOT NULL "
            "PRIMARY KEY `Directory`)" );
    ok( res == ERROR_SUCCESS , "Failed to create directory table\n" );

    return hdb;
}
