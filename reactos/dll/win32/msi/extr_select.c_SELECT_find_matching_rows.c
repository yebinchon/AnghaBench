
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int num_cols; int* cols; TYPE_3__* table; } ;
struct TYPE_4__ {int (* find_matching_rows ) (TYPE_3__*,int,int,int*,int *) ;} ;
typedef TYPE_2__ MSISELECTVIEW ;
typedef int MSIITERHANDLE ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,struct tagMSIVIEW*,int,int,int ) ;
 int stub1 (TYPE_3__*,int,int,int*,int *) ;

__attribute__((used)) static UINT SELECT_find_matching_rows( struct tagMSIVIEW *view, UINT col,
    UINT val, UINT *row, MSIITERHANDLE *handle )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    TRACE("%p, %d, %u, %p\n", view, col, val, *handle);

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if( (col==0) || (col>sv->num_cols) )
         return ERROR_FUNCTION_FAILED;

    col = sv->cols[ col - 1 ];

    return sv->table->ops->find_matching_rows( sv->table, col, val, row, handle );
}
