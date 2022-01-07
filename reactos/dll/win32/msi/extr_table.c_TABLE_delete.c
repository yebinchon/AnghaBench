
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int * columns; int * table; } ;
typedef TYPE_1__ MSITABLEVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,struct tagMSIVIEW*) ;
 int msi_free (TYPE_1__*) ;

__attribute__((used)) static UINT TABLE_delete( struct tagMSIVIEW *view )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;

    TRACE("%p\n", view );

    tv->table = ((void*)0);
    tv->columns = ((void*)0);

    msi_free( tv );

    return ERROR_SUCCESS;
}
