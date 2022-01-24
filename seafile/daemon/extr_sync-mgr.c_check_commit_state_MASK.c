#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  commit_timer; TYPE_1__* mgr; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit_job_running; } ;
typedef  TYPE_2__ SyncTask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2 (void *data)
{
    SyncTask *task = data;

    if (!task->mgr->commit_job_running) {
        FUNC1 (&task->commit_timer);
        FUNC0 (task);
        return 0;
    }

    return 1;
}