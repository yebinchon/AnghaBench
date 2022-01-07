
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_11__ {TYPE_2__* db; TYPE_3__* sv; } ;
struct TYPE_10__ {TYPE_1__* ops; } ;
struct TYPE_9__ {int hdr; } ;
struct TYPE_8__ {int (* delete ) (TYPE_3__*) ;} ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSIINSERTVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_4__*) ;
 int msi_free (TYPE_4__*) ;
 int msiobj_release (int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static UINT INSERT_delete( struct tagMSIVIEW *view )
{
    MSIINSERTVIEW *iv = (MSIINSERTVIEW*)view;
    MSIVIEW *sv;

    TRACE("%p\n", iv );

    sv = iv->sv;
    if( sv )
        sv->ops->delete( sv );
    msiobj_release( &iv->db->hdr );
    msi_free( iv );

    return ERROR_SUCCESS;
}
