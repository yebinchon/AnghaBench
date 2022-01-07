
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
struct TYPE_6__ {TYPE_3__* table; int num_cols; } ;
struct TYPE_5__ {int (* get_dimensions ) (TYPE_3__*,int *,int *) ;} ;
typedef TYPE_2__ MSISELECTVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_2__*,int *,int *) ;
 int stub1 (TYPE_3__*,int *,int *) ;

__attribute__((used)) static UINT SELECT_get_dimensions( struct tagMSIVIEW *view, UINT *rows, UINT *cols )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    TRACE("%p %p %p\n", sv, rows, cols );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if( cols )
        *cols = sv->num_cols;

    return sv->table->ops->get_dimensions( sv->table, rows, ((void*)0) );
}
