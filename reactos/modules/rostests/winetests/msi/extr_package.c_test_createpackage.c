
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
 int create_package_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int ,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_createpackage(void)
{
    MSIHANDLE hPackage = 0;
    UINT res;

    res = package_from_db(create_package_db(), &hPackage);
    if (res == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( res == ERROR_SUCCESS, " Failed to create package %u\n", res );

    res = MsiCloseHandle( hPackage);
    ok( res == ERROR_SUCCESS , "Failed to close package\n" );
    DeleteFileA(msifile);
}
