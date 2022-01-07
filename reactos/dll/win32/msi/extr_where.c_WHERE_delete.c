
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_12__ {TYPE_1__* ops; } ;
struct TYPE_11__ {TYPE_2__* db; struct TYPE_11__* order_info; scalar_t__ table_count; struct TYPE_11__* tables; struct TYPE_11__* next; TYPE_5__* view; } ;
struct TYPE_10__ {int hdr; } ;
struct TYPE_9__ {int (* delete ) (TYPE_5__*) ;} ;
typedef TYPE_3__ MSIWHEREVIEW ;
typedef TYPE_3__ JOINTABLE ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_3__*) ;
 int free_reorder (TYPE_3__*) ;
 int msi_free (TYPE_3__*) ;
 int msiobj_release (int *) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static UINT WHERE_delete( struct tagMSIVIEW *view )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    JOINTABLE *table = wv->tables;

    TRACE("%p\n", wv );

    while(table)
    {
        JOINTABLE *next;

        table->view->ops->delete(table->view);
        table->view = ((void*)0);
        next = table->next;
        msi_free(table);
        table = next;
    }
    wv->tables = ((void*)0);
    wv->table_count = 0;

    free_reorder(wv);

    msi_free(wv->order_info);
    wv->order_info = ((void*)0);

    msiobj_release( &wv->db->hdr );
    msi_free( wv );

    return ERROR_SUCCESS;
}
