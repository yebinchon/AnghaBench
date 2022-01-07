
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int http_tx_mgr; } ;
struct TYPE_9__ {int use_fileserver_port; int token; int effective_host; int version; int id; } ;
struct TYPE_8__ {TYPE_2__* repo; } ;
typedef TYPE_1__ SyncTask ;
typedef TYPE_2__ SeafRepo ;


 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int SYNC_STATE_INIT ;
 int check_head_commit_done ;
 int http_tx_manager_check_head_commit (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 TYPE_5__* seaf ;
 int set_task_error (TYPE_1__*,int ) ;
 int transition_sync_state (TYPE_1__*,int ) ;

__attribute__((used)) static int
check_head_commit_http (SyncTask *task)
{
    SeafRepo *repo = task->repo;

    int ret = http_tx_manager_check_head_commit (seaf->http_tx_mgr,
                                                 repo->id, repo->version,
                                                 repo->effective_host,
                                                 repo->token,
                                                 repo->use_fileserver_port,
                                                 check_head_commit_done,
                                                 task);
    if (ret == 0)
        transition_sync_state (task, SYNC_STATE_INIT);
    else if (ret < 0)
        set_task_error (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);

    return ret;
}
