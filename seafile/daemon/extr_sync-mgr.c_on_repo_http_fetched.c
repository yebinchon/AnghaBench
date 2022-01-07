
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ delete_pending; } ;
struct TYPE_16__ {scalar_t__ state; int error; int head; scalar_t__ is_clone; int repo_id; } ;
struct TYPE_15__ {int repo_mgr; } ;
struct TYPE_14__ {int head_commit; TYPE_1__* current_task; } ;
struct TYPE_13__ {TYPE_7__* repo; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafileSession ;
typedef int SeafSyncManager ;
typedef TYPE_4__ HttpTxTask ;


 scalar_t__ HTTP_TASK_STATE_CANCELED ;
 scalar_t__ HTTP_TASK_STATE_ERROR ;
 scalar_t__ HTTP_TASK_STATE_FINISHED ;
 int SYNC_ERROR_ID_SERVER_REPO_DELETED ;
 int SYNC_STATE_CANCELED ;
 int SYNC_STATE_DONE ;
 TYPE_2__* get_sync_info (int *,int ) ;
 int memcpy (int ,int ,int) ;
 int on_repo_deleted_on_server (TYPE_1__*,TYPE_7__*) ;
 int seaf_repo_manager_del_repo (int ,TYPE_7__*) ;
 int set_task_error (TYPE_1__*,int ) ;
 int transition_sync_state (TYPE_1__*,int ) ;

__attribute__((used)) static void
on_repo_http_fetched (SeafileSession *seaf,
                      HttpTxTask *tx_task,
                      SeafSyncManager *manager)
{
    SyncInfo *info = get_sync_info (manager, tx_task->repo_id);
    SyncTask *task = info->current_task;


    if (tx_task->is_clone)
        return;

    if (task->repo->delete_pending) {
        transition_sync_state (task, SYNC_STATE_CANCELED);
        seaf_repo_manager_del_repo (seaf->repo_mgr, task->repo);
        return;
    }

    if (tx_task->state == HTTP_TASK_STATE_FINISHED) {
        memcpy (info->head_commit, tx_task->head, 41);
        transition_sync_state (task, SYNC_STATE_DONE);
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
