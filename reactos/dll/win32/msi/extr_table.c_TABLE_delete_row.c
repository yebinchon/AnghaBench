
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ num_cols; TYPE_2__* table; int row_size; TYPE_1__* columns; } ;
struct TYPE_6__ {scalar_t__ row_count; int ** data; int * data_persistent; } ;
struct TYPE_5__ {int * hash_table; } ;
typedef TYPE_3__ MSITABLEVIEW ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ TABLE_get_dimensions (struct tagMSIVIEW*,scalar_t__*,scalar_t__*) ;
 int TRACE (char*,TYPE_3__*,scalar_t__) ;
 int memcpy (int *,int *,int ) ;
 int msi_free (int *) ;

__attribute__((used)) static UINT TABLE_delete_row( struct tagMSIVIEW *view, UINT row )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT r, num_rows, num_cols, i;

    TRACE("%p %d\n", tv, row);

    if ( !tv->table )
        return ERROR_INVALID_PARAMETER;

    r = TABLE_get_dimensions( view, &num_rows, &num_cols );
    if ( r != ERROR_SUCCESS )
        return r;

    if ( row >= num_rows )
        return ERROR_FUNCTION_FAILED;

    num_rows = tv->table->row_count;
    tv->table->row_count--;


    for (i = 0; i < tv->num_cols; i++)
    {
        msi_free( tv->columns[i].hash_table );
        tv->columns[i].hash_table = ((void*)0);
    }

    for (i = row + 1; i < num_rows; i++)
    {
        memcpy(tv->table->data[i - 1], tv->table->data[i], tv->row_size);
        tv->table->data_persistent[i - 1] = tv->table->data_persistent[i];
    }

    msi_free(tv->table->data[num_rows - 1]);

    return ERROR_SUCCESS;
}
