
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int sync_mgr; } ;
struct TYPE_11__ {size_t state; int error; TYPE_3__* repo; TYPE_2__* mgr; TYPE_1__* info; } ;
struct TYPE_10__ {int worktree; int name; int id; } ;
struct TYPE_9__ {int n_running_tasks; } ;
struct TYPE_8__ {int in_sync; } ;
typedef TYPE_4__ SyncTask ;


 int FALSE ;
 int N_SYNC_ERROR_ID ;
 int SYNC_ERROR_LEVEL_REPO ;
 size_t SYNC_STATE_ERROR ;
 int g_return_if_fail (int) ;
 TYPE_7__* seaf ;
 int seaf_message (char*,int ,int ,int ,char const*) ;
 int seaf_repo_manager_record_sync_error (int ,int ,int *,int) ;
 int seaf_sync_manager_add_refresh_path (int ,int ) ;
 char* sync_error_id_to_str (int) ;
 int sync_error_level (int) ;
 int * sync_state_str ;
 int update_sync_info_error_state (TYPE_4__*,size_t) ;

__attribute__((used)) static void
set_task_error (SyncTask *task, int error)
{
    g_return_if_fail (error >= 0 && error < N_SYNC_ERROR_ID);

    const char *err_str = sync_error_id_to_str(error);
    int err_level = sync_error_level(error);

    if (task->state != SYNC_STATE_ERROR) {
        seaf_message ("Repo '%s' sync state transition from %s to '%s': '%s'.\n",
                      task->repo->name,
                      sync_state_str[task->state],
                      sync_state_str[SYNC_STATE_ERROR],
                      err_str);
        task->state = SYNC_STATE_ERROR;
        task->error = error;
        task->info->in_sync = FALSE;
        --(task->mgr->n_running_tasks);
        update_sync_info_error_state (task, SYNC_STATE_ERROR);




        if (err_level == SYNC_ERROR_LEVEL_REPO)
            seaf_repo_manager_record_sync_error (task->repo->id, task->repo->name, ((void*)0), error);





    }
}
