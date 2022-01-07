
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* gpointer ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int hash_lock; int repo_locked_files; } ;
typedef TYPE_2__ SeafFilelockManager ;
typedef int GHashTableIter ;
typedef int GHashTable ;


 int g_hash_table_foreach (int *,int ,char*) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,void**,void**) ;
 int init_locks ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
seaf_filelock_manager_start (SeafFilelockManager *mgr)
{
    GHashTableIter iter;
    gpointer key, value;
    char *repo_id;
    GHashTable *locks;

    pthread_mutex_lock (&mgr->priv->hash_lock);

    g_hash_table_iter_init (&iter, mgr->priv->repo_locked_files);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        repo_id = key;
        locks = value;
        g_hash_table_foreach (locks, init_locks, repo_id);
    }

    pthread_mutex_unlock (&mgr->priv->hash_lock);

    return 0;
}
