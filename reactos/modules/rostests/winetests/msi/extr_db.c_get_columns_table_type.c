
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char*,int *) ;
 scalar_t__ MsiRecordGetInteger (int ,int) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static UINT get_columns_table_type(MSIHANDLE hdb, const char *table, UINT field)
{
    MSIHANDLE hview = 0, rec = 0;
    UINT r, type = 0;
    char query[0x100];

    sprintf(query, "select * from `_Columns` where  `Table` = '%s'", table );

    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    if( r != ERROR_SUCCESS )
        return r;

    r = MsiViewExecute(hview, 0);
    if( r == ERROR_SUCCESS )
    {
        while (1)
        {
            r = MsiViewFetch( hview, &rec );
            if( r != ERROR_SUCCESS)
                break;
            r = MsiRecordGetInteger( rec, 2 );
            if (r == field)
                type = MsiRecordGetInteger( rec, 4 );
            MsiCloseHandle( rec );
        }
    }
    MsiViewClose(hview);
    MsiCloseHandle(hview);
    return type;
}
