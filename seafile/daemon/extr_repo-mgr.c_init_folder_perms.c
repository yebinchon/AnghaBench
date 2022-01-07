
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char* data; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int perm_lock; void* group_perms; void* user_perms; int repo_hash; } ;
typedef TYPE_1__ SeafRepoManagerPriv ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ GList ;


 int FOLDER_PERM_TYPE_GROUP ;
 int FOLDER_PERM_TYPE_USER ;
 int g_free ;
 TYPE_3__* g_hash_table_get_keys (int ) ;
 int g_hash_table_insert (void*,int ,TYPE_3__*) ;
 void* g_hash_table_new_full (int ,int ,int ,int *) ;
 int g_list_free (TYPE_3__*) ;
 int g_str_equal ;
 int g_str_hash ;
 int g_strdup (char*) ;
 TYPE_3__* load_folder_perms_for_repo (TYPE_2__*,char*,int ) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
init_folder_perms (SeafRepoManager *mgr)
{
    SeafRepoManagerPriv *priv = mgr->priv;
    GList *repo_ids = g_hash_table_get_keys (priv->repo_hash);
    GList *ptr;
    GList *perms;
    char *repo_id;

    priv->user_perms = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, ((void*)0));
    priv->group_perms = g_hash_table_new_full (g_str_hash, g_str_equal, g_free, ((void*)0));
    pthread_mutex_init (&priv->perm_lock, ((void*)0));

    for (ptr = repo_ids; ptr; ptr = ptr->next) {
        repo_id = ptr->data;
        perms = load_folder_perms_for_repo (mgr, repo_id, FOLDER_PERM_TYPE_USER);
        if (perms) {
            pthread_mutex_lock (&priv->perm_lock);
            g_hash_table_insert (priv->user_perms, g_strdup(repo_id), perms);
            pthread_mutex_unlock (&priv->perm_lock);
        }
        perms = load_folder_perms_for_repo (mgr, repo_id, FOLDER_PERM_TYPE_GROUP);
        if (perms) {
            pthread_mutex_lock (&priv->perm_lock);
            g_hash_table_insert (priv->group_perms, g_strdup(repo_id), perms);
            pthread_mutex_unlock (&priv->perm_lock);
        }
    }

    g_list_free (repo_ids);
}
