
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MSIDBOPEN_DIRECT ;
 scalar_t__ MsiCloseHandle (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiOpenDatabaseW (int const*,int ,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int,int ,int,int *,char*) ;
 int VT_I4 ;
 int VT_LPSTR ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void set_suminfo( const WCHAR *filename )
{
    UINT r;
    MSIHANDLE hsi, hdb;

    r = MsiOpenDatabaseW( filename, MSIDBOPEN_DIRECT, &hdb );
    ok( r == ERROR_SUCCESS, "failed to open database %u\n", r );

    r = MsiGetSummaryInformationA( hdb, ((void*)0), 7, &hsi );
    ok( r == ERROR_SUCCESS, "failed to open summaryinfo %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 2, VT_LPSTR, 0, ((void*)0), "Installation Database" );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 3, VT_LPSTR, 0, ((void*)0), "Installation Database" );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 4, VT_LPSTR, 0, ((void*)0), "WineHQ" );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 7, VT_LPSTR, 0, ((void*)0), ";1033" );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 9, VT_LPSTR, 0, ((void*)0), "{E528DDD6-4801-4BEC-BBB6-C5EE0FD097E9}" );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 14, VT_I4, 100, ((void*)0), ((void*)0) );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoSetPropertyA( hsi, 15, VT_I4, 0, ((void*)0), ((void*)0) );
    ok( r == ERROR_SUCCESS, "failed to set summary info %u\n", r );

    r = MsiSummaryInfoPersist( hsi );
    ok( r == ERROR_SUCCESS, "failed to persist suminfo %u\n", r );

    r = MsiCloseHandle( hsi );
    ok( r == ERROR_SUCCESS, "failed to close suminfo %u\n", r );

    r = MsiCloseHandle( hdb );
    ok( r == ERROR_SUCCESS, "failed to close database %u\n", r );
}
