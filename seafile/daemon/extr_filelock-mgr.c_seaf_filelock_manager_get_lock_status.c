
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ locked_by_me; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int hash_lock; int * repo_locked_files; } ;
typedef TYPE_2__ SeafFilelockManager ;
typedef TYPE_3__ LockInfo ;
typedef int GHashTable ;


 int FILE_LOCKED_BY_ME_AUTO ;
 int FILE_LOCKED_BY_ME_MANUAL ;
 int FILE_LOCKED_BY_OTHERS ;
 int FILE_NOT_LOCKED ;
 scalar_t__ _LOCKED_AUTO ;
 scalar_t__ _LOCKED_MANUAL ;
 void* g_hash_table_lookup (int *,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
seaf_filelock_manager_get_lock_status (SeafFilelockManager *mgr,
                                       const char *repo_id,
                                       const char *path)
{
    int ret;

    pthread_mutex_lock (&mgr->priv->hash_lock);

    GHashTable *locks = g_hash_table_lookup (mgr->priv->repo_locked_files, repo_id);
    if (!locks) {
        pthread_mutex_unlock (&mgr->priv->hash_lock);
        return FILE_NOT_LOCKED;
    }

    LockInfo *info = g_hash_table_lookup (locks, path);
    if (!info) {
        pthread_mutex_unlock (&mgr->priv->hash_lock);
        return FILE_NOT_LOCKED;
    }

    if (info->locked_by_me == _LOCKED_MANUAL)
        ret = FILE_LOCKED_BY_ME_MANUAL;
    else if (info->locked_by_me == _LOCKED_AUTO)
        ret = FILE_LOCKED_BY_ME_AUTO;
    else
        ret = FILE_LOCKED_BY_OTHERS;

    pthread_mutex_unlock (&mgr->priv->hash_lock);
    return ret;
}
