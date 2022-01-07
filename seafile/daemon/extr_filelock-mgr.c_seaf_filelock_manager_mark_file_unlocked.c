
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int hash_lock; int repo_locked_files; } ;
typedef TYPE_2__ SeafFilelockManager ;
typedef int GHashTable ;


 int * g_hash_table_lookup (int ,char const*) ;
 int g_hash_table_remove (int *,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refresh_locked_path_status (char const*,char const*) ;
 int remove_locked_file_from_db (TYPE_2__*,char const*,char const*) ;

int
seaf_filelock_manager_mark_file_unlocked (SeafFilelockManager *mgr,
                                          const char *repo_id,
                                          const char *path)
{
    GHashTable *locks;

    pthread_mutex_lock (&mgr->priv->hash_lock);

    locks = g_hash_table_lookup (mgr->priv->repo_locked_files, repo_id);
    if (!locks) {
        pthread_mutex_unlock (&mgr->priv->hash_lock);
        return 0;
    }

    g_hash_table_remove (locks, path);

    pthread_mutex_unlock (&mgr->priv->hash_lock);





    return remove_locked_file_from_db (mgr, repo_id, path);
}
