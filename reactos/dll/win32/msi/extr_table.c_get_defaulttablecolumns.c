
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;
typedef int MSIDATABASE ;
typedef int MSICOLUMNINFO ;
typedef int LPCWSTR ;
typedef size_t DWORD ;


 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int * _Columns_cols ;
 int * _Tables_cols ;
 int debugstr_w (int ) ;
 int strcmpW (int ,int ) ;
 int szColumns ;
 int szTables ;
 int table_calc_column_offsets (int *,int *,size_t) ;

__attribute__((used)) static UINT get_defaulttablecolumns( MSIDATABASE *db, LPCWSTR name, MSICOLUMNINFO *colinfo, UINT *sz )
{
    const MSICOLUMNINFO *p;
    DWORD i, n;

    TRACE("%s\n", debugstr_w(name));

    if (!strcmpW( name, szTables ))
    {
        p = _Tables_cols;
        n = 1;
    }
    else if (!strcmpW( name, szColumns ))
    {
        p = _Columns_cols;
        n = 4;
    }
    else return ERROR_FUNCTION_FAILED;

    for (i = 0; i < n; i++)
    {
        if (colinfo && i < *sz) colinfo[i] = p[i];
        if (colinfo && i >= *sz) break;
    }
    table_calc_column_offsets( db, colinfo, n );
    *sz = n;
    return ERROR_SUCCESS;
}
