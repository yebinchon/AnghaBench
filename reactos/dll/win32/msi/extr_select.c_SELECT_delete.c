
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
typedef TYPE_2__ MSISELECTVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*) ;
 int msi_free (TYPE_2__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static UINT SELECT_delete( struct tagMSIVIEW *view )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    TRACE("%p\n", sv );

    if( sv->table )
        sv->table->ops->delete( sv->table );
    sv->table = ((void*)0);

    msi_free( sv );

    return ERROR_SUCCESS;
}
