
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char*,int *) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 int ok (int,char*,scalar_t__) ;
 int sprintf (char*,char const*,char const*,char const*) ;

__attribute__((used)) static UINT find_entry( MSIHANDLE hdb, const char *table, const char *entry )
{
    static const char fmt[] = "SELECT * FROM `%s` WHERE `Name` = '%s'";
    char query[0x100];
    UINT r;
    MSIHANDLE hview, hrec;

    sprintf( query, fmt, table, entry );
    r = MsiDatabaseOpenViewA( hdb, query, &hview );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = MsiViewExecute( hview, 0 );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = MsiViewFetch( hview, &hrec );
    MsiViewClose( hview );
    MsiCloseHandle( hview );
    MsiCloseHandle( hrec );
    return r;
}
