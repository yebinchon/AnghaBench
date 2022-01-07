
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int perm_lock; int group_perms; int user_perms; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef int GList ;
typedef int GDestroyNotify ;


 scalar_t__ folder_perm_free ;
 int * g_hash_table_lookup (int ,char const*) ;
 int g_hash_table_remove (int ,char const*) ;
 int g_list_free_full (int *,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
remove_folder_perms (SeafRepoManager *mgr, const char *repo_id)
{
    GList *perms = ((void*)0);

    pthread_mutex_lock (&mgr->priv->perm_lock);

    perms = g_hash_table_lookup (mgr->priv->user_perms, repo_id);
    if (perms) {
        g_list_free_full (perms, (GDestroyNotify)folder_perm_free);
        g_hash_table_remove (mgr->priv->user_perms, repo_id);
    }

    perms = g_hash_table_lookup (mgr->priv->group_perms, repo_id);
    if (perms) {
        g_list_free_full (perms, (GDestroyNotify)folder_perm_free);
        g_hash_table_remove (mgr->priv->group_perms, repo_id);
    }

    pthread_mutex_unlock (&mgr->priv->perm_lock);
}
