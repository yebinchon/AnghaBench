
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef scalar_t__ DWORD ;


 int DeleteFileA (int ) ;
 scalar_t__ ERROR_DIRECTORY ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiGetTargetPathA (int ,char*,char*,scalar_t__*) ;
 scalar_t__ MsiGetTargetPathW (int ,char const*,char*,scalar_t__*) ;
 int create_package_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int ,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_gettargetpath_bad(void)
{
    static const WCHAR boo[] = {'b','o','o',0};
    static const WCHAR empty[] = {0};
    char buffer[0x80];
    WCHAR bufferW[0x80];
    MSIHANDLE hpkg;
    DWORD sz;
    UINT r;

    r = package_from_db(create_package_db(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    r = MsiGetTargetPathA( 0, ((void*)0), ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiGetTargetPathA( 0, ((void*)0), ((void*)0), &sz );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiGetTargetPathA( 0, "boo", ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = MsiGetTargetPathA( 0, "boo", ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = MsiGetTargetPathA( hpkg, "boo", ((void*)0), ((void*)0) );
    ok( r == ERROR_DIRECTORY, "wrong return val\n");

    r = MsiGetTargetPathA( hpkg, "boo", buffer, ((void*)0) );
    ok( r == ERROR_DIRECTORY, "wrong return val\n");

    sz = 0;
    r = MsiGetTargetPathA( hpkg, "", buffer, &sz );
    ok( r == ERROR_DIRECTORY, "wrong return val\n");

    r = MsiGetTargetPathW( 0, ((void*)0), ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiGetTargetPathW( 0, ((void*)0), ((void*)0), &sz );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiGetTargetPathW( 0, boo, ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = MsiGetTargetPathW( 0, boo, ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = MsiGetTargetPathW( hpkg, boo, ((void*)0), ((void*)0) );
    ok( r == ERROR_DIRECTORY, "wrong return val\n");

    r = MsiGetTargetPathW( hpkg, boo, bufferW, ((void*)0) );
    ok( r == ERROR_DIRECTORY, "wrong return val\n");

    sz = 0;
    r = MsiGetTargetPathW( hpkg, empty, bufferW, &sz );
    ok( r == ERROR_DIRECTORY, "wrong return val\n");

    MsiCloseHandle( hpkg );
    DeleteFileA(msifile);
}
