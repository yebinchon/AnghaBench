
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int gint ;
typedef void* gboolean ;
struct TYPE_12__ {scalar_t__ last_check; scalar_t__ partial_commit; int last_changed; } ;
typedef TYPE_2__ WTStatus ;
struct TYPE_14__ {void* create_partial_commit; int id; } ;
struct TYPE_13__ {TYPE_1__* seaf; } ;
struct TYPE_11__ {int wt_monitor; } ;
typedef int SyncTask ;
typedef TYPE_3__ SeafSyncManager ;
typedef TYPE_4__ SeafRepo ;


 void* FALSE ;
 void* TRUE ;
 int commit_repo (int *) ;
 int * create_sync_task_v2 (TYPE_3__*,TYPE_4__*,void*,void*) ;
 int g_atomic_int_get (int *) ;
 TYPE_2__* seaf_wt_monitor_get_worktree_status (int ,int ) ;
 int time (int *) ;
 int wt_status_unref (TYPE_2__*) ;

__attribute__((used)) static gboolean
create_commit_from_event_queue (SeafSyncManager *manager, SeafRepo *repo,
                                gboolean is_manual_sync)
{
    WTStatus *status;
    SyncTask *task;
    gboolean ret = FALSE;
    gint now = (gint)time(((void*)0));
    gint last_changed;

    status = seaf_wt_monitor_get_worktree_status (manager->seaf->wt_monitor,
                                                  repo->id);
    if (status) {
        last_changed = g_atomic_int_get (&status->last_changed);
        if (status->last_check == 0) {

            task = create_sync_task_v2 (manager, repo, is_manual_sync, TRUE);
            repo->create_partial_commit = TRUE;
            commit_repo (task);
            status->last_check = now;
            ret = TRUE;
        } else if (status->partial_commit) {
            task = create_sync_task_v2 (manager, repo, is_manual_sync, FALSE);
            repo->create_partial_commit = TRUE;
            commit_repo (task);
            ret = TRUE;
        } else if (last_changed != 0 && status->last_check <= last_changed) {



            if (now - last_changed >= 2) {
                task = create_sync_task_v2 (manager, repo, is_manual_sync, FALSE);
                repo->create_partial_commit = TRUE;
                commit_repo (task);
                status->last_check = now;
                ret = TRUE;
            }
        }
        wt_status_unref (status);
    }

    return ret;
}
