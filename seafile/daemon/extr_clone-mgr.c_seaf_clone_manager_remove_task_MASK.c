#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  started; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {int /*<<< orphan*/  tasks; } ;
typedef  TYPE_1__ SeafCloneManager ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 scalar_t__ CLONE_STATE_CANCELED ; 
 scalar_t__ CLONE_STATE_DONE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4 (SeafCloneManager *mgr,
                                const char *repo_id)
{
    CloneTask *task;

    if (!seaf->started) {
        FUNC2 ("System not started, skip removing clone task.\n");
        return -1;
    }

    task = FUNC0 (mgr->tasks, repo_id);
    if (!task)
        return -1;

    if (task->state != CLONE_STATE_DONE &&
        task->state != CLONE_STATE_CANCELED) {
        FUNC3 ("[Clone mgr] cannot remove running task.\n");
        return -1;
    }

    /* On-disk task should have been removed. */

    FUNC1 (mgr->tasks, repo_id);

    return 0;
}