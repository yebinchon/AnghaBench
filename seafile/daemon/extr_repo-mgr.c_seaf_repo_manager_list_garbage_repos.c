
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int db_lock; int db; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef int GList ;


 int get_garbage_repo_id ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sqlite_foreach_selected_row (int ,char*,int ,int **) ;

GList *
seaf_repo_manager_list_garbage_repos (SeafRepoManager *mgr)
{
    GList *repo_ids = ((void*)0);

    pthread_mutex_lock (&mgr->priv->db_lock);

    sqlite_foreach_selected_row (mgr->priv->db,
                                 "SELECT repo_id FROM GarbageRepos",
                                 get_garbage_repo_id, &repo_ids);
    pthread_mutex_unlock (&mgr->priv->db_lock);

    return repo_ids;
}
