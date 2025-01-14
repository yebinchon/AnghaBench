
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {scalar_t__ state; scalar_t__ runtime_state; } ;
struct TYPE_7__ {int upload_tasks; int download_tasks; } ;
typedef TYPE_2__ HttpTxTask ;
typedef TYPE_3__ HttpTxManager ;


 scalar_t__ HTTP_TASK_RT_STATE_FINISHED ;
 scalar_t__ HTTP_TASK_RT_STATE_INIT ;
 int HTTP_TASK_STATE_CANCELED ;
 scalar_t__ HTTP_TASK_STATE_NORMAL ;
 int HTTP_TASK_TYPE_DOWNLOAD ;
 TYPE_2__* g_hash_table_lookup (int ,char const*) ;
 int seaf_warning (char*) ;
 int transition_state (TYPE_2__*,int ,scalar_t__) ;

void
http_tx_manager_cancel_task (HttpTxManager *manager,
                             const char *repo_id,
                             int task_type)
{
    HttpTxTask *task = ((void*)0);

    if (task_type == HTTP_TASK_TYPE_DOWNLOAD)
        task = g_hash_table_lookup (manager->priv->download_tasks, repo_id);
    else
        task = g_hash_table_lookup (manager->priv->upload_tasks, repo_id);

    if (!task)
        return;

    if (task->state != HTTP_TASK_STATE_NORMAL) {
        seaf_warning ("Cannot cancel task not in NORMAL state.\n");
        return;
    }

    if (task->runtime_state == HTTP_TASK_RT_STATE_INIT) {
        transition_state (task, HTTP_TASK_STATE_CANCELED, HTTP_TASK_RT_STATE_FINISHED);
        return;
    }


    transition_state (task, HTTP_TASK_STATE_CANCELED, task->runtime_state);
}
