
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_physicalmemory {int memorytype; int capacity; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef scalar_t__ UINT ;


 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int TRACE (char*,scalar_t__) ;
 int free_row_values (struct table*,scalar_t__) ;
 int get_total_physical_memory () ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int resize_table (struct table*,int,int) ;

__attribute__((used)) static enum fill_status fill_physicalmemory( struct table *table, const struct expr *cond )
{
    struct record_physicalmemory *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    UINT row = 0;

    if (!resize_table( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    rec = (struct record_physicalmemory *)table->data;
    rec->capacity = get_total_physical_memory();
    rec->memorytype = 9;
    if (!match_row( table, row, cond, &status )) free_row_values( table, row );
    else row++;

    TRACE("created %u rows\n", row);
    table->num_rows = row;
    return status;
}
