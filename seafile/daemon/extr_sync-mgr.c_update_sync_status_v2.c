
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_20__ {int commit_id; } ;
struct TYPE_19__ {int id; int name; } ;
struct TYPE_18__ {int head_commit; scalar_t__ deleted_on_relay; scalar_t__ repo_corrupted; int repo_id; } ;
struct TYPE_17__ {TYPE_2__* info; TYPE_3__* repo; } ;
struct TYPE_16__ {int job_mgr; int branch_mgr; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafRepo ;
typedef TYPE_4__ SeafBranch ;


 int SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ;
 int SYNC_ERROR_ID_SERVER_REPO_CORRUPT ;
 int SYNC_STATE_DONE ;
 int on_repo_deleted_on_server (TYPE_1__*,TYPE_3__*) ;
 int remove_blocks_done ;
 int remove_repo_blocks ;
 scalar_t__ repo_block_store_exists (TYPE_3__*) ;
 TYPE_12__* seaf ;
 TYPE_4__* seaf_branch_manager_get_branch (int ,int ,char*) ;
 int seaf_branch_unref (TYPE_4__*) ;
 int seaf_job_manager_schedule_job (int ,int ,int ,TYPE_1__*) ;
 int seaf_message (char*,int ,int ) ;
 int seaf_warning (char*,int ,int ) ;
 int set_task_error (TYPE_1__*,int ) ;
 int start_fetch_if_necessary (TYPE_1__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int transition_sync_state (TYPE_1__*,int ) ;

__attribute__((used)) static void
update_sync_status_v2 (SyncTask *task)
{
    SyncInfo *info = task->info;
    SeafRepo *repo = task->repo;
    SeafBranch *master = ((void*)0), *local = ((void*)0);

    local = seaf_branch_manager_get_branch (
        seaf->branch_mgr, info->repo_id, "local");
    if (!local) {
        seaf_warning ("[sync-mgr] Branch local not found for repo %s(%.8s).\n",
                   repo->name, repo->id);
        set_task_error (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

    master = seaf_branch_manager_get_branch (
        seaf->branch_mgr, info->repo_id, "master");
    if (!master) {
        seaf_warning ("[sync-mgr] Branch master not found for repo %s(%.8s).\n",
                   repo->name, repo->id);
        set_task_error (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

    if (info->repo_corrupted) {
        set_task_error (task, SYNC_ERROR_ID_SERVER_REPO_CORRUPT);
    } else if (info->deleted_on_relay) {
        on_repo_deleted_on_server (task, repo);
    } else {

        if (strcmp (local->commit_id, info->head_commit) == 0) {



            if (repo_block_store_exists (repo)) {
                seaf_message ("Removing blocks for repo %s(%.8s).\n",
                              repo->name, repo->id);
                seaf_job_manager_schedule_job (seaf->job_mgr,
                                               remove_repo_blocks,
                                               remove_blocks_done,
                                               task);
            } else
                transition_sync_state (task, SYNC_STATE_DONE);
        } else
            start_fetch_if_necessary (task, task->info->head_commit);
    }

    seaf_branch_unref (local);
    seaf_branch_unref (master);
}
