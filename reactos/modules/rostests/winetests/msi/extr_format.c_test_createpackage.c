
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MsiCloseHandle (int ) ;
 scalar_t__ helper_createpackage (int ,int *) ;
 int msifile ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_createpackage(void)
{
    MSIHANDLE hPackage = 0;
    UINT res;

    res = helper_createpackage( msifile, &hPackage );
    if (res == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        return;
    }
    ok( res == ERROR_SUCCESS, "Failed to create package %u\n", res );

    res = MsiCloseHandle( hPackage );
    ok( res == ERROR_SUCCESS , "Failed to close package %u\n", res );

    DeleteFileA( msifile );
}
