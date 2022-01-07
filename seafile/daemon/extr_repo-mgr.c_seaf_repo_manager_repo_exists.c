
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gchar ;
typedef int gboolean ;
struct TYPE_8__ {int delete_pending; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int lock; int repo_hash; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;


 int FALSE ;
 int TRUE ;
 TYPE_3__* g_hash_table_lookup (int ,int const*) ;
 scalar_t__ pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int seaf_warning (char*) ;

gboolean
seaf_repo_manager_repo_exists (SeafRepoManager *manager, const gchar *id)
{
    SeafRepo *res;

    if (pthread_rwlock_rdlock (&manager->priv->lock) < 0) {
        seaf_warning ("[repo mgr] failed to lock repo cache.\n");
        return FALSE;
    }

    res = g_hash_table_lookup (manager->priv->repo_hash, id);

    pthread_rwlock_unlock (&manager->priv->lock);

    if (res && !res->delete_pending)
        return TRUE;

    return FALSE;
}
