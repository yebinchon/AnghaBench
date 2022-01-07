
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ num_cols; scalar_t__ row_size; TYPE_1__* table; TYPE_3__* columns; int db; } ;
struct TYPE_4__ {scalar_t__ row_count; int data; } ;
typedef TYPE_2__ MSITABLEVIEW ;


 int ERR (char*,scalar_t__,...) ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int LONG_STR_BYTES ;
 scalar_t__ bytes_per_column (int ,TYPE_3__*,int ) ;
 scalar_t__ read_table_int (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static UINT TABLE_fetch_int( struct tagMSIVIEW *view, UINT row, UINT col, UINT *val )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT offset, n;

    if( !tv->table )
        return ERROR_INVALID_PARAMETER;

    if( (col==0) || (col>tv->num_cols) )
        return ERROR_INVALID_PARAMETER;


    if( row >= tv->table->row_count )
        return ERROR_NO_MORE_ITEMS;

    if( tv->columns[col-1].offset >= tv->row_size )
    {
        ERR("Stuffed up %d >= %d\n", tv->columns[col-1].offset, tv->row_size );
        ERR("%p %p\n", tv, tv->columns );
        return ERROR_FUNCTION_FAILED;
    }

    n = bytes_per_column( tv->db, &tv->columns[col - 1], LONG_STR_BYTES );
    if (n != 2 && n != 3 && n != 4)
    {
        ERR("oops! what is %d bytes per column?\n", n );
        return ERROR_FUNCTION_FAILED;
    }

    offset = tv->columns[col-1].offset;
    *val = read_table_int(tv->table->data, row, offset, n);



    return ERROR_SUCCESS;
}
