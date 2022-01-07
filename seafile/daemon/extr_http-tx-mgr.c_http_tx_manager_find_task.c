
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int download_tasks; int upload_tasks; } ;
typedef int HttpTxTask ;
typedef TYPE_2__ HttpTxManager ;


 int * g_hash_table_lookup (int ,char const*) ;

HttpTxTask *
http_tx_manager_find_task (HttpTxManager *manager, const char *repo_id)
{
    HttpTxTask *task = ((void*)0);

    task = g_hash_table_lookup (manager->priv->upload_tasks, repo_id);
    if (task)
        return task;

    task = g_hash_table_lookup (manager->priv->download_tasks, repo_id);
    return task;
}
