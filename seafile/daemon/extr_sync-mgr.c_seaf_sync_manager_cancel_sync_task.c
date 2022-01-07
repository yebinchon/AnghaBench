
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int http_tx_mgr; int started; } ;
struct TYPE_10__ {int sync_infos; } ;
struct TYPE_9__ {TYPE_1__* current_task; scalar_t__ sync_perm_err_cnt; int in_error; scalar_t__ err_cnt; int in_sync; } ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafSyncManager ;


 int FALSE ;
 int HTTP_TASK_TYPE_DOWNLOAD ;
 int HTTP_TASK_TYPE_UPLOAD ;


 scalar_t__ SYNC_STATE_ERROR ;




 TYPE_2__* g_hash_table_lookup (int ,char const*) ;
 int g_return_if_fail (int ) ;
 int g_return_if_reached () ;
 int http_tx_manager_cancel_task (int ,char const*,int ) ;
 TYPE_6__* seaf ;
 int seaf_message (char*) ;
 int transition_sync_state (TYPE_1__*,int) ;

void
seaf_sync_manager_cancel_sync_task (SeafSyncManager *mgr,
                                    const char *repo_id)
{
    SyncInfo *info;
    SyncTask *task;

    if (!seaf->started) {
        seaf_message ("sync manager is not started, skip cancel request.\n");
        return;
    }


    info = g_hash_table_lookup (mgr->sync_infos, repo_id);

    if (!info)
        return;
    else if (!info->in_sync) {
        if (info->current_task->state == SYNC_STATE_ERROR) {
            info->err_cnt = 0;
            info->in_error = FALSE;
            info->sync_perm_err_cnt = 0;
        }
        return;
    }

    g_return_if_fail (info->current_task != ((void*)0));
    task = info->current_task;

    switch (task->state) {
    case 131:
        http_tx_manager_cancel_task (seaf->http_tx_mgr,
                                     repo_id,
                                     HTTP_TASK_TYPE_DOWNLOAD);
        transition_sync_state (task, 133);
        break;
    case 128:
        http_tx_manager_cancel_task (seaf->http_tx_mgr,
                                     repo_id,
                                     HTTP_TASK_TYPE_UPLOAD);
        transition_sync_state (task, 133);
        break;
    case 132:
    case 130:
    case 129:
        transition_sync_state (task, 133);
        break;
    case 133:
        break;
    default:
        g_return_if_reached ();
    }
}
