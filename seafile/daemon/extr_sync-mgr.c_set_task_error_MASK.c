#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_11__ {size_t state; int error; TYPE_3__* repo; TYPE_2__* mgr; TYPE_1__* info; } ;
struct TYPE_10__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  n_running_tasks; } ;
struct TYPE_8__ {int /*<<< orphan*/  in_sync; } ;
typedef  TYPE_4__ SyncTask ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int N_SYNC_ERROR_ID ; 
 int SYNC_ERROR_LEVEL_REPO ; 
 size_t SYNC_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/ * sync_state_str ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,size_t) ; 

__attribute__((used)) static void
FUNC7 (SyncTask *task, int error)
{
    FUNC0 (error >= 0 && error < N_SYNC_ERROR_ID);

    const char *err_str = FUNC4(error);
    int err_level = FUNC5(error);

    if (task->state != SYNC_STATE_ERROR) {
        FUNC1 ("Repo '%s' sync state transition from %s to '%s': '%s'.\n",
                      task->repo->name,
                      sync_state_str[task->state],
                      sync_state_str[SYNC_STATE_ERROR],
                      err_str);
        task->state = SYNC_STATE_ERROR;
        task->error = error;
        task->info->in_sync = FALSE;
        --(task->mgr->n_running_tasks);
        FUNC6 (task, SYNC_STATE_ERROR);

        /* For repo-level errors, only need to record in database, but not send notifications.
         * File-level errors are recorded and notified in the location they happens, not here.
         */
        if (err_level == SYNC_ERROR_LEVEL_REPO)
            FUNC2 (task->repo->id, task->repo->name, NULL, error);

#ifdef WIN32
        seaf_sync_manager_add_refresh_path (seaf->sync_mgr, task->repo->worktree);
#endif

    }
}