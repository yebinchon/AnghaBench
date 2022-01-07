
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int DeleteFileW (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int MSIDBOPEN_CREATE ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiOpenDatabaseW (int ,int ,int *) ;
 int msifileW ;
 int ok (int,char*) ;

__attribute__((used)) static MSIHANDLE create_db(void)
{
    MSIHANDLE hdb = 0;
    UINT res;

    DeleteFileW(msifileW);


    res = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb );
    ok( res == ERROR_SUCCESS , "Failed to create database\n" );
    if( res != ERROR_SUCCESS )
        return hdb;

    res = MsiDatabaseCommit( hdb );
    ok( res == ERROR_SUCCESS , "Failed to commit database\n" );

    return hdb;
}
