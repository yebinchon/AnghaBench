
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_6__ {TYPE_2__* repo_mgr; } ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int perm_lock; int group_perms; int user_perms; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef int GList ;


 int FALSE ;
 int TRUE ;
 int g_free (char*) ;
 int * g_hash_table_lookup (int ,char const*) ;
 char* g_strconcat (char*,char const*,int *) ;
 char* lookup_folder_perm (int *,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__* seaf ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static gboolean
is_path_writable (const char *repo_id,
                  gboolean is_repo_readonly,
                  const char *path)
{
    SeafRepoManager *mgr = seaf->repo_mgr;
    GList *user_perms = ((void*)0), *group_perms = ((void*)0);
    char *permission = ((void*)0);
    char *abs_path = ((void*)0);

    pthread_mutex_lock (&mgr->priv->perm_lock);

    user_perms = g_hash_table_lookup (mgr->priv->user_perms, repo_id);
    group_perms = g_hash_table_lookup (mgr->priv->group_perms, repo_id);

    if (user_perms || group_perms)
        abs_path = g_strconcat ("/", path, ((void*)0));

    if (user_perms)
        permission = lookup_folder_perm (user_perms, abs_path);
    if (!permission && group_perms)
        permission = lookup_folder_perm (group_perms, abs_path);

    pthread_mutex_unlock (&mgr->priv->perm_lock);

    g_free (abs_path);

    if (!permission)
        return !is_repo_readonly;

    if (strcmp (permission, "rw") == 0)
        return TRUE;
    else
        return FALSE;
}
