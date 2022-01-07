
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {TYPE_1__* table; } ;
struct TYPE_6__ {scalar_t__ row_count; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int MSIRECORD ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int msi_free (scalar_t__*) ;
 scalar_t__* msi_record_to_row (TYPE_2__*,int *) ;
 scalar_t__ msi_row_matches (TYPE_2__*,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static UINT msi_table_find_row( MSITABLEVIEW *tv, MSIRECORD *rec, UINT *row, UINT *column )
{
    UINT i, r = ERROR_FUNCTION_FAILED, *data;

    data = msi_record_to_row( tv, rec );
    if( !data )
        return r;
    for( i = 0; i < tv->table->row_count; i++ )
    {
        r = msi_row_matches( tv, i, data, column );
        if( r == ERROR_SUCCESS )
        {
            *row = i;
            break;
        }
    }
    msi_free( data );
    return r;
}
