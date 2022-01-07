
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {int tables; int storage; } ;
struct TYPE_12__ {int entry; scalar_t__ col_count; int * colinfo; int persistent; int name; int * data_persistent; int * data; scalar_t__ row_count; } ;
typedef TYPE_1__ MSITABLE ;
typedef TYPE_2__ MSIDATABASE ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int MSICONDITION_NONE ;
 int MSICONDITION_TRUE ;
 TYPE_1__* find_cached_table (TYPE_2__*,int ) ;
 int free_table (TYPE_1__*) ;
 int list_add_head (int *,int *) ;
 int lstrcpyW (int ,int ) ;
 int lstrlenW (int ) ;
 TYPE_1__* msi_alloc (int) ;
 scalar_t__ read_table_from_storage (TYPE_2__*,TYPE_1__*,int ) ;
 int strcmpW (int ,int ) ;
 int szColumns ;
 int szTables ;
 scalar_t__ table_get_column_info (TYPE_2__*,int ,int **,scalar_t__*) ;

__attribute__((used)) static UINT get_table( MSIDATABASE *db, LPCWSTR name, MSITABLE **table_ret )
{
    MSITABLE *table;
    UINT r;


    table = find_cached_table( db, name );
    if (table)
    {
        *table_ret = table;
        return ERROR_SUCCESS;
    }


    table = msi_alloc( sizeof(MSITABLE) + lstrlenW( name ) * sizeof(WCHAR) );
    if (!table)
        return ERROR_FUNCTION_FAILED;

    table->row_count = 0;
    table->data = ((void*)0);
    table->data_persistent = ((void*)0);
    table->colinfo = ((void*)0);
    table->col_count = 0;
    table->persistent = MSICONDITION_TRUE;
    lstrcpyW( table->name, name );

    if (!strcmpW( name, szTables ) || !strcmpW( name, szColumns ))
        table->persistent = MSICONDITION_NONE;

    r = table_get_column_info( db, name, &table->colinfo, &table->col_count );
    if (r != ERROR_SUCCESS)
    {
        free_table( table );
        return r;
    }
    r = read_table_from_storage( db, table, db->storage );
    if (r != ERROR_SUCCESS)
    {
        free_table( table );
        return r;
    }
    list_add_head( &db->tables, &table->entry );
    *table_ret = table;
    return ERROR_SUCCESS;
}
