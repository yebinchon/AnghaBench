
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int flags; int entry; struct table* data; int num_cols; scalar_t__ columns; scalar_t__ name; } ;
struct column {int dummy; } ;
typedef struct table WCHAR ;


 int TABLE_FLAG_DYNAMIC ;
 int TRACE (char*,struct table*) ;
 int clear_table (struct table*) ;
 int free_columns (struct column*,int ) ;
 int heap_free (struct table*) ;
 int list_remove (int *) ;

void free_table( struct table *table )
{
    if (!table) return;

    clear_table( table );
    if (table->flags & TABLE_FLAG_DYNAMIC)
    {
        TRACE("destroying %p\n", table);
        heap_free( (WCHAR *)table->name );
        free_columns( (struct column *)table->columns, table->num_cols );
        heap_free( table->data );
        list_remove( &table->entry );
        heap_free( table );
    }
}
