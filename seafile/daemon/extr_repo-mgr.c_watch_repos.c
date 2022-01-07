
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* gpointer ;
struct TYPE_12__ {int wt_monitor; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {scalar_t__ sync_interval; int id; int worktree; int worktree_invalid; scalar_t__ auto_sync; } ;
struct TYPE_9__ {int repo_hash; } ;
typedef TYPE_3__ SeafRepoManager ;
typedef TYPE_2__ SeafRepo ;
typedef int GHashTableIter ;


 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,TYPE_2__**,TYPE_2__**) ;
 TYPE_6__* seaf ;
 int seaf_warning (char*,int ) ;
 scalar_t__ seaf_wt_monitor_watch_repo (int ,int ,int ) ;

__attribute__((used)) static void
watch_repos (SeafRepoManager *mgr)
{
    GHashTableIter iter;
    SeafRepo *repo;
    gpointer key, value;

    g_hash_table_iter_init (&iter, mgr->priv->repo_hash);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        repo = value;
        if (repo->auto_sync && !repo->worktree_invalid && (repo->sync_interval == 0)) {
            if (seaf_wt_monitor_watch_repo (seaf->wt_monitor, repo->id, repo->worktree) < 0) {
                seaf_warning ("failed to watch repo %s.\n", repo->id);



            }
        }
    }
}
