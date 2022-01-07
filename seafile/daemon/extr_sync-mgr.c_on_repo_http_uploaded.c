
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* head; int id; scalar_t__ delete_pending; } ;
struct TYPE_19__ {scalar_t__ state; int error; int head; int repo_id; } ;
struct TYPE_18__ {int repo_mgr; } ;
struct TYPE_17__ {int head_commit; scalar_t__ in_sync; TYPE_2__* current_task; } ;
struct TYPE_16__ {TYPE_8__* repo; int uploaded; } ;
struct TYPE_15__ {int commit_id; } ;
typedef TYPE_2__ SyncTask ;
typedef TYPE_3__ SyncInfo ;
typedef TYPE_4__ SeafileSession ;
typedef int SeafSyncManager ;
typedef TYPE_5__ HttpTxTask ;


 scalar_t__ HTTP_TASK_STATE_CANCELED ;
 scalar_t__ HTTP_TASK_STATE_ERROR ;
 scalar_t__ HTTP_TASK_STATE_FINISHED ;
 int REPO_LOCAL_HEAD ;
 int SYNC_ERROR_ID_SERVER_REPO_DELETED ;
 int SYNC_STATE_CANCELED ;
 int TRUE ;
 int check_head_commit_http (TYPE_2__*) ;
 int g_return_if_fail (int) ;
 TYPE_3__* get_sync_info (int *,int ) ;
 int memcpy (int ,int ,int) ;
 int on_repo_deleted_on_server (TYPE_2__*,TYPE_8__*) ;
 int seaf_repo_manager_del_repo (int ,TYPE_8__*) ;
 int seaf_repo_manager_set_repo_property (int ,int ,int ,int ) ;
 int set_task_error (TYPE_2__*,int ) ;
 int transition_sync_state (TYPE_2__*,int ) ;

__attribute__((used)) static void
on_repo_http_uploaded (SeafileSession *seaf,
                       HttpTxTask *tx_task,
                       SeafSyncManager *manager)
{
    SyncInfo *info = get_sync_info (manager, tx_task->repo_id);
    SyncTask *task = info->current_task;

    g_return_if_fail (task != ((void*)0) && info->in_sync);

    if (task->repo->delete_pending) {
        transition_sync_state (task, SYNC_STATE_CANCELED);
        seaf_repo_manager_del_repo (seaf->repo_mgr, task->repo);
        return;
    }

    if (tx_task->state == HTTP_TASK_STATE_FINISHED) {
        memcpy (info->head_commit, tx_task->head, 41);


        seaf_repo_manager_set_repo_property (seaf->repo_mgr,
                                             task->repo->id,
                                             REPO_LOCAL_HEAD,
                                             task->repo->head->commit_id);
        task->uploaded = TRUE;
        check_head_commit_http (task);
    } else if (tx_task->state == HTTP_TASK_STATE_CANCELED) {
        transition_sync_state (task, SYNC_STATE_CANCELED);
    } else if (tx_task->state == HTTP_TASK_STATE_ERROR) {
        if (tx_task->error == SYNC_ERROR_ID_SERVER_REPO_DELETED) {
            on_repo_deleted_on_server (task, task->repo);
        } else {
            set_task_error (task, tx_task->error);
        }
    }
}
