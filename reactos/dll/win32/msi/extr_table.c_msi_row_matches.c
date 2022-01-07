
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t num_cols; int view; TYPE_1__* columns; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_2__ MSITABLEVIEW ;


 int ERR (char*) ;
 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_SUCCESS ;
 int MSITYPE_KEY ;
 size_t TABLE_fetch_int (int *,size_t,size_t,size_t*) ;

__attribute__((used)) static UINT msi_row_matches( MSITABLEVIEW *tv, UINT row, const UINT *data, UINT *column )
{
    UINT i, r, x, ret = ERROR_FUNCTION_FAILED;

    for( i=0; i<tv->num_cols; i++ )
    {
        if ( ~tv->columns[i].type & MSITYPE_KEY )
            continue;


        r = TABLE_fetch_int( &tv->view, row, i+1, &x );
        if ( r != ERROR_SUCCESS )
        {
            ERR("TABLE_fetch_int shouldn't fail here\n");
            break;
        }


        if ( x != data[i] )
        {
            ret = ERROR_FUNCTION_FAILED;
            break;
        }
        if (column) *column = i;
        ret = ERROR_SUCCESS;
    }
    return ret;
}
