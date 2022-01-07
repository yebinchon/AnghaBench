
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_FUNCTION_NOT_CALLED ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int) ;
 scalar_t__ MsiDoActionA (int,char*) ;
 int create_package_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int ,int*) ;
 int skip (char*) ;

__attribute__((used)) static void test_doaction( void )
{
    MSIHANDLE hpkg;
    UINT r;

    r = MsiDoActionA( -1, ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = package_from_db(create_package_db(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    r = MsiDoActionA(hpkg, ((void*)0));
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiDoActionA(0, "boo");
    ok( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = MsiDoActionA(hpkg, "boo");
    ok( r == ERROR_FUNCTION_NOT_CALLED, "wrong return val\n");

    MsiCloseHandle( hpkg );
    DeleteFileA(msifile);
}
