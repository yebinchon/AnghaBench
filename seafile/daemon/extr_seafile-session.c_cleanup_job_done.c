
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int started; int filelock_mgr; int clone_mgr; int repo_mgr; int wt_monitor; int sync_mgr; int http_tx_mgr; int ev_mgr; } ;
typedef TYPE_1__ SeafileSession ;


 int TRUE ;
 scalar_t__ cevent_manager_start (int ) ;
 int g_error (char*) ;
 scalar_t__ http_tx_manager_start (int ) ;
 scalar_t__ seaf_clone_manager_start (int ) ;
 scalar_t__ seaf_filelock_manager_start (int ) ;
 scalar_t__ seaf_repo_manager_start (int ) ;
 scalar_t__ seaf_sync_manager_start (int ) ;
 scalar_t__ seaf_wt_monitor_start (int ) ;

__attribute__((used)) static void
cleanup_job_done (void *vdata)
{
    SeafileSession *session = vdata;

    if (cevent_manager_start (session->ev_mgr) < 0) {
        g_error ("Failed to start event manager.\n");
        return;
    }

    if (http_tx_manager_start (session->http_tx_mgr) < 0) {
        g_error ("Failed to start http transfer manager.\n");
        return;
    }

    if (seaf_sync_manager_start (session->sync_mgr) < 0) {
        g_error ("Failed to start sync manager.\n");
        return;
    }

    if (seaf_wt_monitor_start (session->wt_monitor) < 0) {
        g_error ("Failed to start worktree monitor.\n");
        return;
    }


    if (seaf_repo_manager_start (session->repo_mgr) < 0) {
        g_error ("Failed to start repo manager.\n");
        return;
    }

    if (seaf_clone_manager_start (session->clone_mgr) < 0) {
        g_error ("Failed to start clone manager.\n");
        return;
    }

    if (seaf_filelock_manager_start (session->filelock_mgr) < 0) {
        g_error ("Failed to start filelock manager.\n");
        return;
    }


    session->started = TRUE;
}
