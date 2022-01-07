
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {scalar_t__ num_rows; int * data; scalar_t__ num_rows_allocated; scalar_t__ fill; } ;
typedef scalar_t__ UINT ;


 int free_row_values (struct table*,scalar_t__) ;
 int heap_free (int *) ;

void clear_table( struct table *table )
{
    UINT i;

    if (!table->data) return;

    for (i = 0; i < table->num_rows; i++) free_row_values( table, i );
    if (table->fill)
    {
        table->num_rows = 0;
        table->num_rows_allocated = 0;
        heap_free( table->data );
        table->data = ((void*)0);
    }
}
