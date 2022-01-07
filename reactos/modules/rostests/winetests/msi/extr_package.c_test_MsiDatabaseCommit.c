
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef char* UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;


 int DeleteFileA (int ) ;
 char* ERROR_INSTALL_PACKAGE_REJECTED ;
 char* ERROR_SUCCESS ;
 int MsiCloseHandle (int) ;
 char* MsiDatabaseCommit (int) ;
 char* MsiGetPropertyA (int,char*,char*,int*) ;
 char* MsiOpenPackageA (char*,int*) ;
 char* MsiSetPropertyA (int,char*,char*) ;
 int create_package_db () ;
 int create_property_table (int) ;
 int lstrcmpA (char*,char*) ;
 int msifile ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void test_MsiDatabaseCommit(void)
{
    UINT r;
    MSIHANDLE hdb, hpkg = 0;
    char buf[32], package[12];
    DWORD sz;

    hdb = create_package_db();
    ok( hdb, "failed to create database\n" );

    create_property_table( hdb );

    sprintf( package, "#%u", hdb );
    r = MsiOpenPackageA( package, &hpkg );
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        goto error;
    }
    ok( r == ERROR_SUCCESS, "got %u\n", r );

    r = MsiSetPropertyA( hpkg, "PROP", "value" );
    ok( r == ERROR_SUCCESS, "got %u\n", r );

    buf[0] = 0;
    sz = sizeof(buf);
    r = MsiGetPropertyA( hpkg, "PROP", buf, &sz );
    ok( r == ERROR_SUCCESS, "MsiGetPropertyA returned %u\n", r );
    ok( !lstrcmpA( buf, "value" ), "got \"%s\"\n", buf );

    r = MsiDatabaseCommit( hdb );
    ok( r == ERROR_SUCCESS, "MsiDatabaseCommit returned %u\n", r );

    buf[0] = 0;
    sz = sizeof(buf);
    r = MsiGetPropertyA( hpkg, "PROP", buf, &sz );
    ok( r == ERROR_SUCCESS, "MsiGetPropertyA returned %u\n", r );
    ok( !lstrcmpA( buf, "value" ), "got \"%s\"\n", buf );

    MsiCloseHandle( hpkg );
error:
    MsiCloseHandle( hdb );
    DeleteFileA( msifile );
}
