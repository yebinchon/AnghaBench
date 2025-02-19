
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int num_cols; int* cols; TYPE_3__* table; } ;
struct TYPE_5__ {int (* fetch_int ) (TYPE_3__*,int,int,int*) ;} ;
typedef TYPE_2__ MSISELECTVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*,int,int,int*) ;
 int stub1 (TYPE_3__*,int,int,int*) ;

__attribute__((used)) static UINT SELECT_fetch_int( struct tagMSIVIEW *view, UINT row, UINT col, UINT *val )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    TRACE("%p %d %d %p\n", sv, row, col, val );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if( !col || col > sv->num_cols )
         return ERROR_FUNCTION_FAILED;

    col = sv->cols[ col - 1 ];
    if( !col )
    {
        *val = 0;
        return ERROR_SUCCESS;
    }
    return sv->table->ops->fetch_int( sv->table, row, col, val );
}
