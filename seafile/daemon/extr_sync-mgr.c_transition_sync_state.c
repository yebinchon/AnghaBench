
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int worktree; int name; } ;
struct TYPE_13__ {int sync_mgr; } ;
struct TYPE_12__ {scalar_t__ uploaded_bytes; scalar_t__ total_bytes; void* end_multipart_upload; void* multipart_upload; void* in_sync; } ;
struct TYPE_11__ {int state; scalar_t__ error; TYPE_7__* repo; TYPE_1__* mgr; scalar_t__ uploaded; TYPE_3__* info; } ;
struct TYPE_10__ {int n_running_tasks; } ;
typedef TYPE_2__ SyncTask ;
typedef TYPE_3__ SyncInfo ;


 void* FALSE ;
 scalar_t__ SYNC_ERROR_ID_NO_ERROR ;
 int SYNC_STATE_CANCELED ;
 int SYNC_STATE_DONE ;
 int SYNC_STATE_ERROR ;
 int SYNC_STATE_FETCH ;
 int SYNC_STATE_INIT ;
 int SYNC_STATE_NUM ;
 int commit_repo (TYPE_2__*) ;
 int g_return_if_fail (int) ;
 scalar_t__ need_notify_sync (TYPE_7__*) ;
 int notify_sync (TYPE_7__*,int) ;
 TYPE_6__* seaf ;
 int seaf_message (char*,int ,int ,...) ;
 int seaf_sync_manager_add_refresh_path (int ,int ) ;
 int sync_error_id_to_str (scalar_t__) ;
 int * sync_state_str ;
 int update_sync_info_error_state (TYPE_2__*,int) ;

__attribute__((used)) static void
transition_sync_state (SyncTask *task, int new_state)
{
    g_return_if_fail (new_state >= 0 && new_state < SYNC_STATE_NUM);

    SyncInfo *info = task->info;

    if (task->state != new_state) {
        if (((task->state == SYNC_STATE_INIT && task->uploaded) ||
             task->state == SYNC_STATE_FETCH) &&
            new_state == SYNC_STATE_DONE &&
            need_notify_sync(task->repo))
            notify_sync (task->repo, (info->multipart_upload && !info->end_multipart_upload));





        if (new_state == SYNC_STATE_DONE &&
            info->multipart_upload &&
            !info->end_multipart_upload) {
            commit_repo (task);
            return;
        }





        if (new_state != SYNC_STATE_ERROR && task->error != SYNC_ERROR_ID_NO_ERROR) {
            new_state = SYNC_STATE_ERROR;
            seaf_message ("Repo '%s' sync is finished but with error: %s\n",
                          task->repo->name,
                          sync_error_id_to_str(task->error));
        }

        if (!(task->state == SYNC_STATE_DONE && new_state == SYNC_STATE_INIT) &&
            !(task->state == SYNC_STATE_INIT && new_state == SYNC_STATE_DONE)) {
            seaf_message ("Repo '%s' sync state transition from '%s' to '%s'.\n",
                          task->repo->name,
                          sync_state_str[task->state],
                          sync_state_str[new_state]);
        }

        task->state = new_state;
        if (new_state == SYNC_STATE_DONE ||
            new_state == SYNC_STATE_CANCELED ||
            new_state == SYNC_STATE_ERROR) {
            info->in_sync = FALSE;
            --(task->mgr->n_running_tasks);
            update_sync_info_error_state (task, new_state);


            if (new_state == SYNC_STATE_DONE) {
                info->multipart_upload = FALSE;
                info->end_multipart_upload = FALSE;
                info->total_bytes = 0;
                info->uploaded_bytes = 0;
            }
        }




    }
}
