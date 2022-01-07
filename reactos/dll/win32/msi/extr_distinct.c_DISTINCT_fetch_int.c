
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef size_t UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {size_t row_count; size_t* translation; TYPE_3__* table; } ;
struct TYPE_5__ {size_t (* fetch_int ) (TYPE_3__*,size_t,size_t,size_t*) ;} ;
typedef TYPE_2__ MSIDISTINCTVIEW ;


 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_INVALID_PARAMETER ;
 int TRACE (char*,TYPE_2__*,size_t,size_t,size_t*) ;
 size_t stub1 (TYPE_3__*,size_t,size_t,size_t*) ;

__attribute__((used)) static UINT DISTINCT_fetch_int( struct tagMSIVIEW *view, UINT row, UINT col, UINT *val )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;

    TRACE("%p %d %d %p\n", dv, row, col, val );

    if( !dv->table )
        return ERROR_FUNCTION_FAILED;

    if( row >= dv->row_count )
        return ERROR_INVALID_PARAMETER;

    row = dv->translation[ row ];

    return dv->table->ops->fetch_int( dv->table, row, col, val );
}
