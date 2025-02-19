
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {scalar_t__ offset; int * hash_table; } ;
struct TYPE_6__ {int num_cols; scalar_t__ row_size; TYPE_1__* table; TYPE_3__* columns; int db; } ;
struct TYPE_5__ {int row_count; int** data; } ;
typedef TYPE_2__ MSITABLEVIEW ;


 int ERR (char*,...) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int LONG_STR_BYTES ;
 int bytes_per_column (int ,TYPE_3__*,int ) ;
 int msi_free (int *) ;

__attribute__((used)) static UINT TABLE_set_int( MSITABLEVIEW *tv, UINT row, UINT col, UINT val )
{
    UINT offset, n, i;

    if( !tv->table )
        return ERROR_INVALID_PARAMETER;

    if( (col==0) || (col>tv->num_cols) )
        return ERROR_INVALID_PARAMETER;

    if( row >= tv->table->row_count )
        return ERROR_INVALID_PARAMETER;

    if( tv->columns[col-1].offset >= tv->row_size )
    {
        ERR("Stuffed up %d >= %d\n", tv->columns[col-1].offset, tv->row_size );
        ERR("%p %p\n", tv, tv->columns );
        return ERROR_FUNCTION_FAILED;
    }

    msi_free( tv->columns[col-1].hash_table );
    tv->columns[col-1].hash_table = ((void*)0);

    n = bytes_per_column( tv->db, &tv->columns[col - 1], LONG_STR_BYTES );
    if ( n != 2 && n != 3 && n != 4 )
    {
        ERR("oops! what is %d bytes per column?\n", n );
        return ERROR_FUNCTION_FAILED;
    }

    offset = tv->columns[col-1].offset;
    for ( i = 0; i < n; i++ )
        tv->table->data[row][offset + i] = (val >> i * 8) & 0xff;

    return ERROR_SUCCESS;
}
