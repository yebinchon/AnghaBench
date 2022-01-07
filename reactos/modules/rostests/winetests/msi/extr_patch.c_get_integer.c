
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int INT ;


 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char const*,int *) ;
 int MsiRecordGetInteger (int ,scalar_t__) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static INT get_integer( MSIHANDLE hdb, UINT field, const char *query)
{
    UINT r;
    INT ret = -1;
    MSIHANDLE hview, hrec;

    r = MsiDatabaseOpenViewA( hdb, query, &hview );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = MsiViewExecute( hview, 0 );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );

    r = MsiViewFetch( hview, &hrec );
    ok( r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r );
    if (r == ERROR_SUCCESS)
    {
        UINT r_tmp;
        ret = MsiRecordGetInteger( hrec, field );
        MsiCloseHandle( hrec );

        r_tmp = MsiViewFetch( hview, &hrec );
        ok( r_tmp == ERROR_NO_MORE_ITEMS, "expected ERROR_NO_MORE_ITEMS, got %u\n", r);
    }

    MsiViewClose( hview );
    MsiCloseHandle( hview );
    return ret;
}
