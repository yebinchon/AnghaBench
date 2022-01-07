
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef size_t UINT ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {size_t row_count; size_t* translation; TYPE_3__* table; } ;
struct TYPE_4__ {size_t (* find_matching_rows ) (TYPE_3__*,size_t,size_t,size_t*,int *) ;} ;
typedef int MSIITERHANDLE ;
typedef TYPE_2__ MSIDISTINCTVIEW ;


 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_NO_MORE_ITEMS ;
 int TRACE (char*,struct tagMSIVIEW*,size_t,size_t,int ) ;
 size_t stub1 (TYPE_3__*,size_t,size_t,size_t*,int *) ;

__attribute__((used)) static UINT DISTINCT_find_matching_rows( struct tagMSIVIEW *view, UINT col,
    UINT val, UINT *row, MSIITERHANDLE *handle )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;
    UINT r;

    TRACE("%p, %d, %u, %p\n", view, col, val, *handle);

    if( !dv->table )
         return ERROR_FUNCTION_FAILED;

    r = dv->table->ops->find_matching_rows( dv->table, col, val, row, handle );

    if( *row > dv->row_count )
        return ERROR_NO_MORE_ITEMS;

    *row = dv->translation[ *row ];

    return r;
}
