
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {scalar_t__ num_rows; scalar_t__ data; } ;
struct record_computersystemproduct {int version; int vendor; int uuid; int * skunumber; int name; int identifyingnumber; } ;
struct expr {int dummy; } ;
typedef enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef scalar_t__ UINT ;


 int FILL_STATUS_FAILED ;
 int FILL_STATUS_UNFILTERED ;
 int TRACE (char*,scalar_t__) ;
 int compsysproduct_identifyingnumberW ;
 int compsysproduct_nameW ;
 int compsysproduct_vendorW ;
 int compsysproduct_versionW ;
 int free_row_values (struct table*,scalar_t__) ;
 int get_compsysproduct_uuid () ;
 int match_row (struct table*,scalar_t__,struct expr const*,int*) ;
 int resize_table (struct table*,int,int) ;

__attribute__((used)) static enum fill_status fill_compsysproduct( struct table *table, const struct expr *cond )
{
    struct record_computersystemproduct *rec;
    enum fill_status status = FILL_STATUS_UNFILTERED;
    UINT row = 0;

    if (!resize_table( table, 1, sizeof(*rec) )) return FILL_STATUS_FAILED;

    rec = (struct record_computersystemproduct *)table->data;
    rec->identifyingnumber = compsysproduct_identifyingnumberW;
    rec->name = compsysproduct_nameW;
    rec->skunumber = ((void*)0);
    rec->uuid = get_compsysproduct_uuid();
    rec->vendor = compsysproduct_vendorW;
    rec->version = compsysproduct_versionW;
    if (!match_row( table, row, cond, &status )) free_row_values( table, row );
    else row++;

    TRACE("created %u rows\n", row);
    table->num_rows = row;
    return status;
}
