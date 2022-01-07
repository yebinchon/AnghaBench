
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_10__ {TYPE_1__* ops; } ;
struct TYPE_9__ {TYPE_2__* db; struct TYPE_9__* translation; TYPE_4__* table; } ;
struct TYPE_8__ {int hdr; } ;
struct TYPE_7__ {int (* delete ) (TYPE_4__*) ;} ;
typedef TYPE_3__ MSIDISTINCTVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_3__*) ;
 int msi_free (TYPE_3__*) ;
 int msiobj_release (int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static UINT DISTINCT_delete( struct tagMSIVIEW *view )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;

    TRACE("%p\n", dv );

    if( dv->table )
        dv->table->ops->delete( dv->table );

    msi_free( dv->translation );
    msiobj_release( &dv->db->hdr );
    msi_free( dv );

    return ERROR_SUCCESS;
}
