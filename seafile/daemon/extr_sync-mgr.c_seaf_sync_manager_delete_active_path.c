
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int synced_tree; int syncing_tree; int paths; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int paths_lock; int active_paths; } ;
typedef TYPE_2__ SeafSyncManager ;
typedef TYPE_3__ ActivePathsInfo ;


 TYPE_3__* g_hash_table_lookup (int ,char const*) ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_warning (char*) ;
 int sync_status_tree_del (int ,char const*) ;

void
seaf_sync_manager_delete_active_path (SeafSyncManager *mgr,
                                      const char *repo_id,
                                      const char *path)
{
    ActivePathsInfo *info;

    if (!repo_id || !path) {
        seaf_warning ("BUG: empty repo_id or path.\n");
        return;
    }

    pthread_mutex_lock (&mgr->priv->paths_lock);

    info = g_hash_table_lookup (mgr->priv->active_paths, repo_id);
    if (!info) {
        pthread_mutex_unlock (&mgr->priv->paths_lock);
        return;
    }

    g_hash_table_remove (info->paths, path);
    sync_status_tree_del (info->syncing_tree, path);
    sync_status_tree_del (info->synced_tree, path);

    pthread_mutex_unlock (&mgr->priv->paths_lock);
}
