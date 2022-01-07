
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_6__ {int num_cols; TYPE_1__* table; int row_size; } ;
struct TYPE_5__ {int row_count; int* data_persistent; int ** data; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int MSIRECORD ;
typedef scalar_t__ BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TABLE_set_row (struct tagMSIVIEW*,int,int *,int) ;
 int TRACE (char*,...) ;
 int find_insert_index (TYPE_2__*,int *) ;
 int memmove (int *,int *,int ) ;
 int table_create_new_row (struct tagMSIVIEW*,int*,scalar_t__) ;
 int table_validate_new (TYPE_2__*,int *,int *) ;

__attribute__((used)) static UINT TABLE_insert_row( struct tagMSIVIEW *view, MSIRECORD *rec, UINT row, BOOL temporary )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT i, r;

    TRACE("%p %p %s\n", tv, rec, temporary ? "TRUE" : "FALSE" );


    r = table_validate_new( tv, rec, ((void*)0) );
    if( r != ERROR_SUCCESS )
        return ERROR_FUNCTION_FAILED;

    if (row == -1)
        row = find_insert_index( tv, rec );

    r = table_create_new_row( view, &row, temporary );
    TRACE("insert_row returned %08x\n", r);
    if( r != ERROR_SUCCESS )
        return r;


    for (i = tv->table->row_count - 1; i > row; i--)
    {
        memmove(&(tv->table->data[i][0]),
                &(tv->table->data[i - 1][0]), tv->row_size);
        tv->table->data_persistent[i] = tv->table->data_persistent[i - 1];
    }


    tv->table->data_persistent[row] = !temporary;
    return TABLE_set_row( view, row, rec, (1<<tv->num_cols) - 1 );
}
