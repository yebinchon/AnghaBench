
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int wt_monitor; } ;
struct TYPE_4__ {scalar_t__ sync_interval; int id; int worktree; scalar_t__ auto_sync; scalar_t__ worktree_invalid; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 scalar_t__ FALSE ;
 TYPE_3__* seaf ;
 int seaf_warning (char*,int ) ;
 scalar_t__ seaf_wt_monitor_watch_repo (int ,int ,int ) ;

void
seaf_repo_manager_validate_repo_worktree (SeafRepoManager *mgr,
                                          SeafRepo *repo)
{
    if (!repo->worktree_invalid)
        return;

    repo->worktree_invalid = FALSE;

    if (repo->auto_sync && (repo->sync_interval == 0)) {
        if (seaf_wt_monitor_watch_repo (seaf->wt_monitor, repo->id, repo->worktree) < 0) {
            seaf_warning ("failed to watch repo %s.\n", repo->id);
        }
    }
}
