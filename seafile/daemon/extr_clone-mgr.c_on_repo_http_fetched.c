
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ server_url; int peer_port; int peer_addr; int email; int token; } ;
struct TYPE_19__ {scalar_t__ state; int repo_id; int error; int is_clone; } ;
struct TYPE_18__ {int tasks; } ;
struct TYPE_17__ {int id; } ;
struct TYPE_16__ {int repo_mgr; } ;
typedef TYPE_1__ SeafileSession ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ SeafCloneManager ;
typedef TYPE_4__ HttpTxTask ;
typedef TYPE_5__ CloneTask ;


 int CLONE_STATE_CANCELED ;
 scalar_t__ HTTP_TASK_STATE_CANCELED ;
 scalar_t__ HTTP_TASK_STATE_ERROR ;
 int REPO_PROP_SERVER_URL ;
 int SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ;
 int check_folder_permissions (TYPE_5__*) ;
 TYPE_5__* g_hash_table_lookup (int ,int ) ;
 int g_return_if_fail (int ) ;
 TYPE_2__* seaf_repo_manager_get_repo (int ,int ) ;
 int seaf_repo_manager_set_repo_email (int ,TYPE_2__*,int ) ;
 int seaf_repo_manager_set_repo_property (int ,int ,int ,scalar_t__) ;
 int seaf_repo_manager_set_repo_relay_info (int ,int ,int ,int ) ;
 int seaf_repo_manager_set_repo_token (int ,TYPE_2__*,int ) ;
 int seaf_warning (char*,int ) ;
 int transition_state (TYPE_5__*,int ) ;
 int transition_to_error (TYPE_5__*,int ) ;

__attribute__((used)) static void
on_repo_http_fetched (SeafileSession *seaf,
                      HttpTxTask *tx_task,
                      SeafCloneManager *mgr)
{
    CloneTask *task;


    if (!tx_task->is_clone)
        return;

    task = g_hash_table_lookup (mgr->tasks, tx_task->repo_id);
    g_return_if_fail (task != ((void*)0));

    if (tx_task->state == HTTP_TASK_STATE_CANCELED) {

        transition_state (task, CLONE_STATE_CANCELED);
        return;
    } else if (tx_task->state == HTTP_TASK_STATE_ERROR) {
        transition_to_error (task, tx_task->error);
        return;
    }

    SeafRepo *repo = seaf_repo_manager_get_repo (seaf->repo_mgr,
                                                 tx_task->repo_id);
    if (repo == ((void*)0)) {
        seaf_warning ("[Clone mgr] cannot find repo %s after fetched.\n",
                   tx_task->repo_id);
        transition_to_error (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

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

    check_folder_permissions (task);
}
