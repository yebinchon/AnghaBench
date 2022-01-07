
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {size_t offset; } ;
struct TYPE_7__ {size_t col_count; size_t row_count; int ** data; TYPE_2__* colinfo; } ;
typedef TYPE_1__ MSITABLE ;
typedef int MSIDATABASE ;
typedef int LPCWSTR ;


 int LONG_STR_BYTES ;
 TYPE_1__* find_cached_table (int *,int ) ;
 int memset (int *,int ,size_t) ;
 int msi_free (TYPE_2__*) ;
 int msi_free_colinfo (TYPE_2__*,size_t) ;
 int * msi_realloc (int *,size_t) ;
 size_t msi_table_get_row_size (int *,TYPE_2__*,size_t,int ) ;
 int table_get_column_info (int *,int ,TYPE_2__**,size_t*) ;

__attribute__((used)) static void msi_update_table_columns( MSIDATABASE *db, LPCWSTR name )
{
    MSITABLE *table;
    UINT size, offset, old_count;
    UINT n;

    if (!(table = find_cached_table( db, name ))) return;
    old_count = table->col_count;
    msi_free_colinfo( table->colinfo, table->col_count );
    msi_free( table->colinfo );
    table->colinfo = ((void*)0);

    table_get_column_info( db, name, &table->colinfo, &table->col_count );
    if (!table->col_count) return;

    size = msi_table_get_row_size( db, table->colinfo, table->col_count, LONG_STR_BYTES );
    offset = table->colinfo[table->col_count - 1].offset;

    for ( n = 0; n < table->row_count; n++ )
    {
        table->data[n] = msi_realloc( table->data[n], size );
        if (old_count < table->col_count)
            memset( &table->data[n][offset], 0, size - offset );
    }
}
