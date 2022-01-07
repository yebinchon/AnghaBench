
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;
typedef char CHAR ;


 int DeleteFileA (int ) ;
 int ERROR_INSTALL_PACKAGE_REJECTED ;
 int ERROR_MORE_DATA ;
 int ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 int MsiGetPropertyA (int ,char*,char*,int*) ;
 int MsiSetPropertyA (int ,char*,char*) ;
 int create_package_db () ;
 int lstrcmpA (char*,char*) ;
 int msifile ;
 int ok (int,char*,...) ;
 int package_from_db (int ,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_getproperty(void)
{
    MSIHANDLE hPackage = 0;
    char prop[100];
    static CHAR empty[] = "";
    DWORD size;
    UINT r;

    r = package_from_db(create_package_db(), &hPackage);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "Failed to create package %u\n", r );


    r = MsiSetPropertyA(hPackage, "Name", "Value");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    size = 0;
    r = MsiGetPropertyA(hPackage, "Name", ((void*)0), &size);
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok( size == 5, "Expected 5, got %d\n", size);


    size = 0;
    r = MsiGetPropertyA(hPackage, "Name", empty, &size);
    ok( r == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", r);
    ok( size == 5, "Expected 5, got %d\n", size);


    r = MsiGetPropertyA(hPackage, "Name", prop, &size);
    ok( r == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", r);
    ok( size == 5, "Expected 5, got %d\n", size);
    ok( !lstrcmpA(prop, "Valu"), "Expected Valu, got %s\n", prop);


    size++;
    r = MsiGetPropertyA(hPackage, "Name", prop, &size);
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok( size == 5, "Expected 5, got %d\n", size);
    ok( !lstrcmpA(prop, "Value"), "Expected Value, got %s\n", prop);

    r = MsiCloseHandle( hPackage);
    ok( r == ERROR_SUCCESS , "Failed to close package\n" );
    DeleteFileA(msifile);
}
