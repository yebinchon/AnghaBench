
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef char* LPSTR ;
typedef char CHAR ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int MAX_PATH ;
 int MSIDBOPEN_CREATE ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiOpenDatabaseW (int ,int ,int *) ;
 int msifile ;
 int msifileW ;
 int ok (int,char*) ;
 scalar_t__ run_query (int ,char*) ;
 int set_summary_info (int ,char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static MSIHANDLE create_package_db(LPSTR prodcode)
{
    MSIHANDLE hdb = 0;
    CHAR query[MAX_PATH];
    UINT res;

    DeleteFileA(msifile);


    res = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb);
    ok( res == ERROR_SUCCESS , "Failed to create database\n" );
    if (res != ERROR_SUCCESS)
        return hdb;

    res = MsiDatabaseCommit(hdb);
    ok(res == ERROR_SUCCESS, "Failed to commit database\n");

    set_summary_info(hdb, prodcode);

    res = run_query(hdb,
            "CREATE TABLE `Directory` ( "
            "`Directory` CHAR(255) NOT NULL, "
            "`Directory_Parent` CHAR(255), "
            "`DefaultDir` CHAR(255) NOT NULL "
            "PRIMARY KEY `Directory`)");
    ok(res == ERROR_SUCCESS , "Failed to create directory table\n");

    res = run_query(hdb,
            "CREATE TABLE `Property` ( "
            "`Property` CHAR(72) NOT NULL, "
            "`Value` CHAR(255) "
            "PRIMARY KEY `Property`)");
    ok(res == ERROR_SUCCESS , "Failed to create directory table\n");

    sprintf(query, "INSERT INTO `Property` "
            "(`Property`, `Value`) "
            "VALUES( 'ProductCode', '%s' )", prodcode);
    res = run_query(hdb, query);
    ok(res == ERROR_SUCCESS , "Failed\n");

    res = MsiDatabaseCommit(hdb);
    ok(res == ERROR_SUCCESS, "Failed to commit database\n");

    return hdb;
}
