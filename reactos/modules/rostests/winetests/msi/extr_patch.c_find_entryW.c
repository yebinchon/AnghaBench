
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewW (int ,char*,int *) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 int ok (int,char*,scalar_t__) ;
 int wsprintfW (char*,char const*,char const*,char const*) ;

__attribute__((used)) static UINT find_entryW( MSIHANDLE hdb, const WCHAR *table, const WCHAR *entry )
{
    static const WCHAR fmt[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','`','%','s','`',' ',
         'W','H','E','R','E',' ','`','N','a','m','e','`',' ','=',' ','\'','%','s','\'',0};
    WCHAR query[0x100];
    MSIHANDLE hview, hrec;
    UINT r;

    wsprintfW( query, fmt, table, entry );
    r = MsiDatabaseOpenViewW( hdb, query, &hview );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = MsiViewExecute( hview, 0 );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = MsiViewFetch( hview, &hrec );
    MsiViewClose( hview );
    MsiCloseHandle( hview );
    MsiCloseHandle( hrec );
    return r;
}
