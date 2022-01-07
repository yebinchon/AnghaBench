
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int repo_mgr; int sync_mgr; int wt_monitor; int started; } ;
struct TYPE_9__ {scalar_t__ sync_interval; int worktree; int id; scalar_t__ auto_sync; } ;
struct TYPE_8__ {scalar_t__ in_sync; } ;
typedef TYPE_1__ SyncInfo ;
typedef TYPE_2__ SeafRepo ;


 int g_free (char*) ;
 char* g_strdup (int ) ;
 TYPE_6__* seaf ;
 int seaf_message (char*) ;
 int seaf_repo_manager_del_repo (int ,TYPE_2__*) ;
 int seaf_repo_manager_mark_repo_deleted (int ,TYPE_2__*) ;
 int seaf_sync_manager_cancel_sync_task (int ,int ) ;
 TYPE_1__* seaf_sync_manager_get_sync_info (int ,int ) ;
 int seaf_wt_monitor_unwatch_repo (int ,int ) ;

__attribute__((used)) static
int do_unsync_repo(SeafRepo *repo)
{
    if (!seaf->started) {
        seaf_message ("System not started, skip removing repo.\n");
        return -1;
    }

    if (repo->auto_sync && (repo->sync_interval == 0))
        seaf_wt_monitor_unwatch_repo (seaf->wt_monitor, repo->id);

    seaf_sync_manager_cancel_sync_task (seaf->sync_mgr, repo->id);

    SyncInfo *info = seaf_sync_manager_get_sync_info (seaf->sync_mgr, repo->id);





    char *worktree = g_strdup (repo->worktree);
    if (info != ((void*)0) && info->in_sync) {
        seaf_repo_manager_mark_repo_deleted (seaf->repo_mgr, repo);
    } else {
        seaf_repo_manager_del_repo (seaf->repo_mgr, repo);
    }

    g_free (worktree);

    return 0;
}
