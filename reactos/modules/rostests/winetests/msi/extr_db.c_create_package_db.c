
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int DeleteFileW (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int MSIDBOPEN_CREATE ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiOpenDatabaseW (int const*,int ,int *) ;
 int create_directory_table (int ) ;
 int msifileW ;
 int ok (int,char*) ;
 scalar_t__ set_summary_info (int ) ;

__attribute__((used)) static MSIHANDLE create_package_db(const WCHAR *filename)
{
    MSIHANDLE hdb = 0;
    UINT res;

    DeleteFileW(msifileW);


    res = MsiOpenDatabaseW(filename, MSIDBOPEN_CREATE, &hdb );
    ok( res == ERROR_SUCCESS , "Failed to create database\n" );
    if( res != ERROR_SUCCESS )
        return hdb;

    res = MsiDatabaseCommit( hdb );
    ok( res == ERROR_SUCCESS , "Failed to commit database\n" );

    res = set_summary_info(hdb);
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    create_directory_table(hdb);

    return hdb;
}
