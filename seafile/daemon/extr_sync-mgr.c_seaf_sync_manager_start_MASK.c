#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_11__ {int /*<<< orphan*/  job_mgr; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {void* refresh_windows_timer; int /*<<< orphan*/  refresh_paths; void* update_tx_state_timer; void* check_sync_timer; } ;
typedef  TYPE_2__ SeafSyncManager ;
typedef  int /*<<< orphan*/  GCallback ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_SYNC_INTERVAL ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  STARTUP_REFRESH_WINDOWS_DELAY ; 
 int /*<<< orphan*/  UPDATE_TX_STATE_INTERVAL ; 
 int /*<<< orphan*/  auto_sync_pulse ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ on_repo_http_fetched ; 
 scalar_t__ on_repo_http_uploaded ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  refresh_all_windows_on_startup ; 
 int /*<<< orphan*/  refresh_windows_explorer_thread ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  update_cached_head_commit_ids ; 
 int /*<<< orphan*/  update_tx_state ; 

int
FUNC7 (SeafSyncManager *mgr)
{
    mgr->priv->check_sync_timer = FUNC5 (
        auto_sync_pulse, mgr, CHECK_SYNC_INTERVAL);

    mgr->priv->update_tx_state_timer = FUNC5 (
        update_tx_state, mgr, UPDATE_TX_STATE_INTERVAL);

    FUNC0 (seaf, "repo-http-fetched",
                      (GCallback)on_repo_http_fetched, mgr);
    FUNC0 (seaf, "repo-http-uploaded",
                      (GCallback)on_repo_http_uploaded, mgr);

#ifdef WIN32
    seaf_job_manager_schedule_job (seaf->job_mgr,
                                   refresh_windows_explorer_thread,
                                   NULL,
                                   mgr->priv->refresh_paths);

    mgr->priv->refresh_windows_timer = seaf_timer_new (
        refresh_all_windows_on_startup, mgr, STARTUP_REFRESH_WINDOWS_DELAY);
#endif

    pthread_t tid;
    pthread_attr_t attr;
    FUNC1(&attr);
    FUNC2(&attr, PTHREAD_CREATE_DETACHED);
    if (FUNC3 (&tid, &attr, update_cached_head_commit_ids, mgr) < 0) {
        FUNC6 ("Failed to create update cached head commit id thread.\n");
        return -1;
    }

    return 0;
}