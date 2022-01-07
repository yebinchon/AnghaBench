
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIDATABASE ;
typedef int MSICOLUMNINFO ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ get_tablecolumns (int *,int ,int *,scalar_t__*) ;
 int * msi_alloc (scalar_t__) ;
 int msi_free (int *) ;

__attribute__((used)) static UINT table_get_column_info( MSIDATABASE *db, LPCWSTR name, MSICOLUMNINFO **pcols, UINT *pcount )
{
    UINT r, column_count = 0;
    MSICOLUMNINFO *columns;


    column_count = 0;
    r = get_tablecolumns( db, name, ((void*)0), &column_count );
    if (r != ERROR_SUCCESS)
        return r;

    *pcount = column_count;


    if (!column_count)
        return ERROR_INVALID_PARAMETER;

    TRACE("table %s found\n", debugstr_w(name));

    columns = msi_alloc( column_count * sizeof(MSICOLUMNINFO) );
    if (!columns)
        return ERROR_FUNCTION_FAILED;

    r = get_tablecolumns( db, name, columns, &column_count );
    if (r != ERROR_SUCCESS)
    {
        msi_free( columns );
        return ERROR_FUNCTION_FAILED;
    }
    *pcols = columns;
    return r;
}
