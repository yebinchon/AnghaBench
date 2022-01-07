
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_8__ {TYPE_4__* view; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* tables; } ;
struct TYPE_6__ {int (* close ) (TYPE_4__*) ;} ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef TYPE_3__ JOINTABLE ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static UINT WHERE_close( struct tagMSIVIEW *view )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    JOINTABLE *table = wv->tables;

    TRACE("%p\n", wv );

    if (!table)
        return ERROR_FUNCTION_FAILED;

    do
        table->view->ops->close(table->view);
    while ((table = table->next));

    return ERROR_SUCCESS;
}
