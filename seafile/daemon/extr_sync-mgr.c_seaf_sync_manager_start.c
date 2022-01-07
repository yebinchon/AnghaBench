
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_11__ {int job_mgr; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {void* refresh_windows_timer; int refresh_paths; void* update_tx_state_timer; void* check_sync_timer; } ;
typedef TYPE_2__ SeafSyncManager ;
typedef int GCallback ;


 int CHECK_SYNC_INTERVAL ;
 int PTHREAD_CREATE_DETACHED ;
 int STARTUP_REFRESH_WINDOWS_DELAY ;
 int UPDATE_TX_STATE_INTERVAL ;
 int auto_sync_pulse ;
 int g_signal_connect (TYPE_5__*,char*,int ,TYPE_2__*) ;
 scalar_t__ on_repo_http_fetched ;
 scalar_t__ on_repo_http_uploaded ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_2__*) ;
 int refresh_all_windows_on_startup ;
 int refresh_windows_explorer_thread ;
 TYPE_5__* seaf ;
 int seaf_job_manager_schedule_job (int ,int ,int *,int ) ;
 void* seaf_timer_new (int ,TYPE_2__*,int ) ;
 int seaf_warning (char*) ;
 int update_cached_head_commit_ids ;
 int update_tx_state ;

int
seaf_sync_manager_start (SeafSyncManager *mgr)
{
    mgr->priv->check_sync_timer = seaf_timer_new (
        auto_sync_pulse, mgr, CHECK_SYNC_INTERVAL);

    mgr->priv->update_tx_state_timer = seaf_timer_new (
        update_tx_state, mgr, UPDATE_TX_STATE_INTERVAL);

    g_signal_connect (seaf, "repo-http-fetched",
                      (GCallback)on_repo_http_fetched, mgr);
    g_signal_connect (seaf, "repo-http-uploaded",
                      (GCallback)on_repo_http_uploaded, mgr);
    pthread_t tid;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    if (pthread_create (&tid, &attr, update_cached_head_commit_ids, mgr) < 0) {
        seaf_warning ("Failed to create update cached head commit id thread.\n");
        return -1;
    }

    return 0;
}
