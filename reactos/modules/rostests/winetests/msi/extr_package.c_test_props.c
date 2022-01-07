
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;


 int DeleteFileA (int ) ;
 char* ERROR_FUNCTION_FAILED ;
 char* ERROR_INSTALL_PACKAGE_REJECTED ;
 char* ERROR_INVALID_HANDLE ;
 char* ERROR_INVALID_PARAMETER ;
 char* ERROR_MORE_DATA ;
 char* ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 char* MsiGetPropertyA (int ,char*,char*,int*) ;
 char* MsiSetPropertyA (int ,char*,char*) ;
 int add_property_entry (int ,char*) ;
 int check_prop_empty (int ,char*) ;
 int create_package_db () ;
 int create_property_table (int ) ;
 int msifile ;
 int ok (int,char*,...) ;
 char* package_from_db (int ,int *) ;
 int skip (char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_props(void)
{
    MSIHANDLE hpkg, hdb;
    UINT r;
    DWORD sz;
    char buffer[0x100];

    hdb = create_package_db();

    create_property_table(hdb);
    add_property_entry(hdb, "'MetadataCompName', 'Photoshop.dll'");

    r = package_from_db( hdb, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "failed to create package %u\n", r);


    r = MsiGetPropertyA( 0, ((void*)0), ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiGetPropertyA( hpkg, ((void*)0), ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiGetPropertyA( hpkg, "boo", ((void*)0), ((void*)0) );
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    r = MsiGetPropertyA( hpkg, "boo", buffer, ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");


    sz = sizeof buffer;
    r = MsiGetPropertyA( hpkg, "boo", ((void*)0), &sz );
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( sz == 0, "wrong size returned\n");

    check_prop_empty( hpkg, "boo");
    sz = 0;
    strcpy(buffer,"x");
    r = MsiGetPropertyA( hpkg, "boo", buffer, &sz );
    ok( r == ERROR_MORE_DATA, "wrong return val\n");
    ok( !strcmp(buffer,"x"), "buffer was changed\n");
    ok( sz == 0, "wrong size returned\n");

    sz = 1;
    strcpy(buffer,"x");
    r = MsiGetPropertyA( hpkg, "boo", buffer, &sz );
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( buffer[0] == 0, "buffer was not changed\n");
    ok( sz == 0, "wrong size returned\n");


    r = MsiSetPropertyA( 0, ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_HANDLE, "wrong return val\n");

    r = MsiSetPropertyA( hpkg, ((void*)0), ((void*)0) );
    ok( r == ERROR_INVALID_PARAMETER, "wrong return val\n");

    r = MsiSetPropertyA( hpkg, "", ((void*)0) );
    ok( r == ERROR_SUCCESS, "wrong return val\n");


    r = MsiSetPropertyA( hpkg, "", "asdf" );
    ok( r == ERROR_FUNCTION_FAILED, "wrong return val\n");

    r = MsiSetPropertyA( hpkg, "=", "asdf" );
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    r = MsiSetPropertyA( hpkg, " ", "asdf" );
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    r = MsiSetPropertyA( hpkg, "'", "asdf" );
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    sz = sizeof buffer;
    buffer[0]=0;
    r = MsiGetPropertyA( hpkg, "'", buffer, &sz );
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( !strcmp(buffer,"asdf"), "buffer was not changed\n");


    r = MsiSetPropertyA( hpkg, "boo", ((void*)0) );
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( check_prop_empty( hpkg, "boo"), "prop wasn't empty\n");

    r = MsiSetPropertyA( hpkg, "boo", "" );
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( check_prop_empty( hpkg, "boo"), "prop wasn't empty\n");


    r = MsiSetPropertyA( hpkg, "boo", "xyz" );
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    sz = 1;
    strcpy(buffer,"x");
    r = MsiGetPropertyA( hpkg, "boo", buffer, &sz );
    ok( r == ERROR_MORE_DATA, "wrong return val\n");
    ok( buffer[0] == 0, "buffer was not changed\n");
    ok( sz == 3, "wrong size returned\n");

    sz = 4;
    strcpy(buffer,"x");
    r = MsiGetPropertyA( hpkg, "boo", buffer, &sz );
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( !strcmp(buffer,"xyz"), "buffer was not changed\n");
    ok( sz == 3, "wrong size returned\n");

    sz = 3;
    strcpy(buffer,"x");
    r = MsiGetPropertyA( hpkg, "boo", buffer, &sz );
    ok( r == ERROR_MORE_DATA, "wrong return val\n");
    ok( !strcmp(buffer,"xy"), "buffer was not changed\n");
    ok( sz == 3, "wrong size returned\n");

    r = MsiSetPropertyA(hpkg, "SourceDir", "foo");
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    sz = 4;
    r = MsiGetPropertyA(hpkg, "SOURCEDIR", buffer, &sz);
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( !strcmp(buffer,""), "buffer wrong\n");
    ok( sz == 0, "wrong size returned\n");

    sz = 4;
    r = MsiGetPropertyA(hpkg, "SOMERANDOMNAME", buffer, &sz);
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( !strcmp(buffer,""), "buffer wrong\n");
    ok( sz == 0, "wrong size returned\n");

    sz = 4;
    r = MsiGetPropertyA(hpkg, "SourceDir", buffer, &sz);
    ok( r == ERROR_SUCCESS, "wrong return val\n");
    ok( !strcmp(buffer,"foo"), "buffer wrong\n");
    ok( sz == 3, "wrong size returned\n");

    r = MsiSetPropertyA(hpkg, "MetadataCompName", "Photoshop.dll");
    ok( r == ERROR_SUCCESS, "wrong return val\n");

    sz = 0;
    r = MsiGetPropertyA(hpkg, "MetadataCompName", ((void*)0), &sz );
    ok( r == ERROR_SUCCESS, "return wrong\n");
    ok( sz == 13, "size wrong (%d)\n", sz);

    sz = 13;
    r = MsiGetPropertyA(hpkg, "MetadataCompName", buffer, &sz );
    ok( r == ERROR_MORE_DATA, "return wrong\n");
    ok( !strcmp(buffer,"Photoshop.dl"), "buffer wrong\n");

    r = MsiSetPropertyA(hpkg, "property", "value");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    sz = 6;
    r = MsiGetPropertyA(hpkg, "property", buffer, &sz);
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok( !strcmp(buffer, "value"), "Expected value, got %s\n", buffer);

    r = MsiSetPropertyA(hpkg, "property", ((void*)0));
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    sz = 6;
    r = MsiGetPropertyA(hpkg, "property", buffer, &sz);
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!buffer[0], "Expected empty string, got %s\n", buffer);

    MsiCloseHandle( hpkg );
    DeleteFileA(msifile);
}
