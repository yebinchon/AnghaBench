#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  job_func; TYPE_1__* seaf; int /*<<< orphan*/  res_pipe; int /*<<< orphan*/  cmd_pipe; } ;
struct TYPE_5__ {int /*<<< orphan*/  job_mgr; } ;
typedef  TYPE_2__ SeafWTMonitor ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (SeafWTMonitor *monitor)
{
    if (FUNC1 (monitor->cmd_pipe) < 0) {
        FUNC2 ("[wt mon] failed to create command pipe: %s.\n",
                      FUNC3(errno));
        return -1;
    }

    if (FUNC1 (monitor->res_pipe) < 0) {
        FUNC2 ("[wt mon] failed to create result pipe: %s.\n",
                      FUNC3(errno));
        return -1;
    }

    if (FUNC0 (monitor->seaf->job_mgr,
                                       monitor->job_func,
                                       NULL, monitor) < 0) {
        FUNC2 ("[wt mon] failed to start monitor thread.\n");
        return -1;
    }

    return 0;
}