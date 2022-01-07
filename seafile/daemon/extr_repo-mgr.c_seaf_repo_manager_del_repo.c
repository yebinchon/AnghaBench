
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int sync_mgr; } ;
struct TYPE_14__ {scalar_t__ version; int id; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {int lock; int repo_hash; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;


 int FALSE ;
 int TRUE ;
 int g_hash_table_remove (int ,int ) ;
 int move_repo_stores (TYPE_2__*,TYPE_3__*) ;
 int pthread_rwlock_unlock (int *) ;
 scalar_t__ pthread_rwlock_wrlock (int *) ;
 int remove_folder_perms (TYPE_2__*,int ) ;
 TYPE_8__* seaf ;
 int seaf_repo_free (TYPE_3__*) ;
 int seaf_repo_manager_remove_repo_ondisk (TYPE_2__*,int ,int ) ;
 int seaf_sync_manager_remove_active_path_info (int ,int ) ;
 int seaf_warning (char*) ;

int
seaf_repo_manager_del_repo (SeafRepoManager *mgr,
                            SeafRepo *repo)
{
    seaf_repo_manager_remove_repo_ondisk (mgr, repo->id,
                                          (repo->version > 0) ? TRUE : FALSE);

    seaf_sync_manager_remove_active_path_info (seaf->sync_mgr, repo->id);

    remove_folder_perms (mgr, repo->id);

    move_repo_stores (mgr, repo);

    if (pthread_rwlock_wrlock (&mgr->priv->lock) < 0) {
        seaf_warning ("[repo mgr] failed to lock repo cache.\n");
        return -1;
    }

    g_hash_table_remove (mgr->priv->repo_hash, repo->id);

    pthread_rwlock_unlock (&mgr->priv->lock);

    seaf_repo_free (repo);

    return 0;
}
