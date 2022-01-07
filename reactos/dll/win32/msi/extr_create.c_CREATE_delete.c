
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int hdr; } ;
typedef TYPE_2__ MSICREATEVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*) ;
 int msi_free (TYPE_2__*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT CREATE_delete( struct tagMSIVIEW *view )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;

    TRACE("%p\n", cv );

    msiobj_release( &cv->db->hdr );
    msi_free( cv );

    return ERROR_SUCCESS;
}
