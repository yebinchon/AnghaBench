
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_3__* table; } ;
struct TYPE_6__ {int (* delete ) (TYPE_3__*) ;} ;
typedef TYPE_2__ MSIDROPVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*) ;
 int msi_free (TYPE_2__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static UINT DROP_delete( struct tagMSIVIEW *view )
{
    MSIDROPVIEW *dv = (MSIDROPVIEW*)view;

    TRACE("%p\n", dv );

    if( dv->table )
        dv->table->ops->delete( dv->table );

    msi_free( dv );

    return ERROR_SUCCESS;
}
