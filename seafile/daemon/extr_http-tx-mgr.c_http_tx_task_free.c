
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int blk_ref_cnts; struct TYPE_4__* repo_name; struct TYPE_4__* email; struct TYPE_4__* worktree; struct TYPE_4__* passwd; struct TYPE_4__* token; struct TYPE_4__* host; } ;
typedef TYPE_1__ HttpTxTask ;


 scalar_t__ HTTP_TASK_TYPE_DOWNLOAD ;
 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;

__attribute__((used)) static void
http_tx_task_free (HttpTxTask *task)
{
    g_free (task->host);
    g_free (task->token);
    g_free (task->passwd);
    g_free (task->worktree);
    g_free (task->email);
    g_free (task->repo_name);
    if (task->type == HTTP_TASK_TYPE_DOWNLOAD) {
        g_hash_table_destroy (task->blk_ref_cnts);
    }
    g_free (task);
}
