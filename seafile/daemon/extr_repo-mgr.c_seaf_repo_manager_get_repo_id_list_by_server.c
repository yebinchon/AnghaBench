
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* gpointer ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int id; int server_url; int delete_pending; } ;
struct TYPE_8__ {int lock; int repo_hash; } ;
typedef TYPE_3__ SeafRepoManager ;
typedef TYPE_2__ SeafRepo ;
typedef int GList ;
typedef int GHashTableIter ;


 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,TYPE_2__**,TYPE_2__**) ;
 int * g_list_prepend (int *,int ) ;
 scalar_t__ g_strcmp0 (int ,char const*) ;
 int g_strdup (int ) ;
 scalar_t__ pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int seaf_warning (char*) ;

GList *
seaf_repo_manager_get_repo_id_list_by_server (SeafRepoManager *manager, const char *server_url)
{
    GList *repo_id_list = ((void*)0);
    GHashTableIter iter;
    SeafRepo *repo;
    gpointer key, value;

    if (pthread_rwlock_rdlock (&manager->priv->lock) < 0) {
        seaf_warning ("[repo mgr] failed to lock repo cache.\n");
        return ((void*)0);
    }
    g_hash_table_iter_init (&iter, manager->priv->repo_hash);

    while (g_hash_table_iter_next (&iter, &key, &value)) {
        repo = value;
        if (!repo->delete_pending && g_strcmp0 (repo->server_url, server_url) == 0)
            repo_id_list = g_list_prepend (repo_id_list, g_strdup(repo->id));
    }

    pthread_rwlock_unlock (&manager->priv->lock);

    return repo_id_list;
}
