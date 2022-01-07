
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ MSIHANDLE ;
typedef int MSICOLINFO ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (scalar_t__) ;
 scalar_t__ MsiDatabaseOpenViewA (scalar_t__,char const*,scalar_t__*) ;
 int MsiViewClose (scalar_t__) ;
 scalar_t__ MsiViewExecute (scalar_t__,int ) ;
 int MsiViewGetColumnInfo (scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static MSIHANDLE get_column_info(MSIHANDLE hdb, const char *query, MSICOLINFO type)
{
    MSIHANDLE hview = 0, rec = 0;
    UINT r;

    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    if( r != ERROR_SUCCESS )
        return r;

    r = MsiViewExecute(hview, 0);
    if( r == ERROR_SUCCESS )
    {
        MsiViewGetColumnInfo( hview, type, &rec );
    }
    MsiViewClose(hview);
    MsiCloseHandle(hview);
    return rec;
}
