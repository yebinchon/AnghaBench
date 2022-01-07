
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int http_tx_mgr; } ;
struct TYPE_6__ {int use_fileserver_port; int token; int effective_url; int repo_version; int repo_id; } ;
typedef TYPE_1__ CloneTask ;


 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int check_head_commit_done ;
 int http_tx_manager_check_head_commit (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;
 TYPE_3__* seaf ;
 int transition_to_error (TYPE_1__*,int ) ;

__attribute__((used)) static void
http_check_head_commit (CloneTask *task)
{
    int ret = http_tx_manager_check_head_commit (seaf->http_tx_mgr,
                                                 task->repo_id,
                                                 task->repo_version,
                                                 task->effective_url,
                                                 task->token,
                                                 task->use_fileserver_port,
                                                 check_head_commit_done,
                                                 task);
    if (ret < 0)
        transition_to_error (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
}
