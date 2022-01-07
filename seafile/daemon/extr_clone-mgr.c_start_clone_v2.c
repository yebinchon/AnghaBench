
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int repo_mgr; } ;
struct TYPE_14__ {scalar_t__ server_url; int peer_port; int peer_addr; int email; int token; int repo_id; int worktree; } ;
struct TYPE_13__ {int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef int GError ;
typedef TYPE_2__ CloneTask ;


 int CLONE_STATE_FETCH ;
 int F_OK ;
 int REPO_PROP_SERVER_URL ;
 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int SYNC_ERROR_ID_WRITE_LOCAL_DATA ;
 scalar_t__ add_transfer_task (TYPE_2__*,int **) ;
 scalar_t__ g_access (int ,int ) ;
 scalar_t__ g_mkdir_with_parents (int ,int) ;
 int mark_clone_done_v2 (TYPE_1__*,TYPE_2__*) ;
 TYPE_9__* seaf ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,int ) ;
 int seaf_repo_manager_set_repo_email (int ,TYPE_1__*,int ) ;
 int seaf_repo_manager_set_repo_property (int ,int ,int ,scalar_t__) ;
 int seaf_repo_manager_set_repo_relay_info (int ,int ,int ,int ) ;
 int seaf_repo_manager_set_repo_token (int ,TYPE_1__*,int ) ;
 int seaf_warning (char*,int ) ;
 int transition_state (TYPE_2__*,int ) ;
 int transition_to_error (TYPE_2__*,int ) ;

__attribute__((used)) static void
start_clone_v2 (CloneTask *task)
{
    GError *error = ((void*)0);

    if (g_access (task->worktree, F_OK) != 0 &&
        g_mkdir_with_parents (task->worktree, 0777) < 0) {
        seaf_warning ("[clone mgr] Failed to create worktree %s.\n",
                      task->worktree);
        transition_to_error (task, SYNC_ERROR_ID_WRITE_LOCAL_DATA);
        return;
    }

    SeafRepo *repo = seaf_repo_manager_get_repo (seaf->repo_mgr, task->repo_id);
    if (repo != ((void*)0)) {
        seaf_repo_manager_set_repo_token (seaf->repo_mgr, repo, task->token);
        seaf_repo_manager_set_repo_email (seaf->repo_mgr, repo, task->email);
        seaf_repo_manager_set_repo_relay_info (seaf->repo_mgr, repo->id,
                                               task->peer_addr, task->peer_port);
        if (task->server_url) {
            seaf_repo_manager_set_repo_property (seaf->repo_mgr,
                                                 repo->id,
                                                 REPO_PROP_SERVER_URL,
                                                 task->server_url);
        }

        mark_clone_done_v2 (repo, task);
        return;
    }

    if (add_transfer_task (task, &error) == 0)
        transition_state (task, CLONE_STATE_FETCH);
    else
        transition_to_error (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
}
