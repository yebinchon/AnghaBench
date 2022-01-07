
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_computersystem {int username; int total_physical_memory; int num_processors; int num_logical_processors; int name; int model; int manufacturer; scalar_t__ domainrole; int domain; int description; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef scalar_t__ UINT ;


 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int TRACE (char*,scalar_t__) ;
 int compsys_descriptionW ;
 int compsys_domainW ;
 int compsys_manufacturerW ;
 int compsys_modelW ;
 int free_row_values (struct table*,scalar_t__) ;
 int get_computername () ;
 int get_logical_processor_count (int *) ;
 int get_processor_count () ;
 int get_total_physical_memory () ;
 int get_username () ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int resize_table (struct table*,int,int) ;

__attribute__((used)) static enum fill_status fill_compsys( struct table *table, const struct expr *cond )
{
    struct record_computersystem *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    UINT row = 0;

    if (!resize_table( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    rec = (struct record_computersystem *)table->data;
    rec->description = compsys_descriptionW;
    rec->domain = compsys_domainW;
    rec->domainrole = 0;
    rec->manufacturer = compsys_manufacturerW;
    rec->model = compsys_modelW;
    rec->name = get_computername();
    rec->num_logical_processors = get_logical_processor_count( ((void*)0) );
    rec->num_processors = get_processor_count();
    rec->total_physical_memory = get_total_physical_memory();
    rec->username = get_username();
    if (!match_row( table, row, cond, &status )) free_row_values( table, row );
    else row++;

    TRACE("created %u rows\n", row);
    table->num_rows = row;
    return status;
}
