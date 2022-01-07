
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int http_tx_mgr; } ;
struct TYPE_4__ {int repo_id; int tx_id; int repo_name; int use_fileserver_port; int email; int http_protocol_version; int worktree; int passwd; int server_head_id; int token; int effective_url; int repo_version; } ;
typedef int GError ;
typedef TYPE_1__ CloneTask ;


 int TRUE ;
 int g_strdup (int ) ;
 int http_tx_manager_add_download (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int **) ;
 TYPE_2__* seaf ;

__attribute__((used)) static int
add_transfer_task (CloneTask *task, GError **error)
{
    int ret = http_tx_manager_add_download (seaf->http_tx_mgr,
                                            task->repo_id,
                                            task->repo_version,
                                            task->effective_url,
                                            task->token,
                                            task->server_head_id,
                                            TRUE,
                                            task->passwd,
                                            task->worktree,
                                            task->http_protocol_version,
                                            task->email,
                                            task->use_fileserver_port,
                                            task->repo_name,
                                            error);
    if (ret < 0)
        return -1;
    task->tx_id = g_strdup(task->repo_id);
    return 0;
}
