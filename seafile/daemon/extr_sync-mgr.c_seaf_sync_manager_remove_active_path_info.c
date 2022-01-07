
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int paths_lock; int active_paths; } ;
typedef TYPE_2__ SeafSyncManager ;


 int SHCNE_ASSOCCHANGED ;
 int SHCNF_IDLIST ;
 int SHChangeNotify (int ,int ,int *,int *) ;
 int g_hash_table_remove (int ,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
seaf_sync_manager_remove_active_path_info (SeafSyncManager *mgr, const char *repo_id)
{
    pthread_mutex_lock (&mgr->priv->paths_lock);

    g_hash_table_remove (mgr->priv->active_paths, repo_id);

    pthread_mutex_unlock (&mgr->priv->paths_lock);





}
