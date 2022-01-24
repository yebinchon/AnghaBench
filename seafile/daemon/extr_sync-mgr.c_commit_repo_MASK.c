#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  job_mgr; } ;
struct TYPE_10__ {TYPE_1__* mgr; int /*<<< orphan*/  commit_timer; } ;
struct TYPE_9__ {scalar_t__ commit_job_running; } ;
typedef  TYPE_2__ SyncTask ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  SYNC_STATE_COMMIT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  check_commit_state ; 
 int /*<<< orphan*/  commit_job ; 
 int /*<<< orphan*/  commit_job_done ; 
 TYPE_7__* seaf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (SyncTask *task)
{
    /* In order not to eat too much CPU power, only one commit job can be run
     * at the same time. Other sync tasks have to check every 1 second.
     */
    if (task->mgr->commit_job_running) {
        task->commit_timer = FUNC1 (check_commit_state, task, 1000);
        return;
    }

    task->mgr->commit_job_running = TRUE;

    FUNC3 (task, SYNC_STATE_COMMIT);

    if (FUNC0 (seaf->job_mgr, 
                                       commit_job, 
                                       commit_job_done,
                                       task) < 0)
        FUNC2 (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
}