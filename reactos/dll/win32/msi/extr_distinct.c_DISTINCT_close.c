
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
struct TYPE_6__ {TYPE_3__* table; scalar_t__ row_count; int * translation; } ;
struct TYPE_5__ {int (* close ) (TYPE_3__*) ;} ;
typedef TYPE_2__ MSIDISTINCTVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_2__*) ;
 int msi_free (int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static UINT DISTINCT_close( struct tagMSIVIEW *view )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;

    TRACE("%p\n", dv );

    if( !dv->table )
         return ERROR_FUNCTION_FAILED;

    msi_free( dv->translation );
    dv->translation = ((void*)0);
    dv->row_count = 0;

    return dv->table->ops->close( dv->table );
}
