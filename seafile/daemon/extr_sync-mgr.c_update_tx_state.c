
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int mq_mgr; int http_tx_mgr; } ;
struct TYPE_13__ {int * data; struct TYPE_13__* next; } ;
struct TYPE_12__ {scalar_t__ len; int str; } ;
struct TYPE_11__ {int recv_bytes; void* last_recv_bytes; int sent_bytes; void* last_sent_bytes; } ;
typedef TYPE_1__ SeafSyncManager ;
typedef int HttpTxTask ;
typedef TYPE_2__ GString ;
typedef TYPE_3__ GList ;


 int TRUE ;
 int format_http_task_detail (int *,TYPE_2__*) ;
 void* g_atomic_int_get (int *) ;
 int g_atomic_int_set (int *,int ) ;
 int g_list_free (TYPE_3__*) ;
 int g_string_free (TYPE_2__*,int) ;
 TYPE_2__* g_string_new (int *) ;
 TYPE_3__* http_tx_manager_get_download_tasks (int ) ;
 TYPE_3__* http_tx_manager_get_upload_tasks (int ) ;
 TYPE_4__* seaf ;
 int seaf_mq_manager_publish_notification (int ,char*,int ) ;

__attribute__((used)) static int
update_tx_state (void *vmanager)
{
    SeafSyncManager *mgr = vmanager;
    GString *buf = g_string_new (((void*)0));
    GList *tasks, *ptr;
    HttpTxTask *http_task;

    mgr->last_sent_bytes = g_atomic_int_get (&mgr->sent_bytes);
    g_atomic_int_set (&mgr->sent_bytes, 0);
    mgr->last_recv_bytes = g_atomic_int_get (&mgr->recv_bytes);
    g_atomic_int_set (&mgr->recv_bytes, 0);

    tasks = http_tx_manager_get_upload_tasks (seaf->http_tx_mgr);
    for (ptr = tasks; ptr; ptr = ptr->next) {
        http_task = ptr->data;
        format_http_task_detail (http_task, buf);
    }
    g_list_free (tasks);

    tasks = http_tx_manager_get_download_tasks (seaf->http_tx_mgr);
    for (ptr = tasks; ptr; ptr = ptr->next) {
        http_task = ptr->data;
        format_http_task_detail (http_task, buf);
    }
    g_list_free (tasks);

    if (buf->len != 0)
        seaf_mq_manager_publish_notification (seaf->mq_mgr, "transfer",
                                              buf->str);

    g_string_free (buf, TRUE);

    return TRUE;
}
