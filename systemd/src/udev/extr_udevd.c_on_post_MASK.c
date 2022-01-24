#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_4__ {scalar_t__ cgroup; int /*<<< orphan*/  event; scalar_t__ exit; int /*<<< orphan*/  kill_workers_event; int /*<<< orphan*/  workers; int /*<<< orphan*/  events; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP_IGNORE_SELF ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_kill_workers_event ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(sd_event_source *s, void *userdata) {
        Manager *manager = userdata;

        FUNC1(manager);

        if (!FUNC0(manager->events))
                return 1;

        /* There are no pending events. Let's cleanup idle process. */

        if (!FUNC4(manager->workers)) {
                /* There are idle workers */
                (void) FUNC3(manager->event, &manager->kill_workers_event, CLOCK_MONOTONIC,
                                        FUNC5(CLOCK_MONOTONIC) + 3 * USEC_PER_SEC, USEC_PER_SEC,
                                        on_kill_workers_event, manager, 0, "kill-workers-event", false);
                return 1;
        }

        /* There are no idle workers. */

        if (manager->exit)
                return FUNC6(manager->event, 0);

        if (manager->cgroup)
                /* cleanup possible left-over processes in our cgroup */
                (void) FUNC2(SYSTEMD_CGROUP_CONTROLLER, manager->cgroup, SIGKILL, CGROUP_IGNORE_SELF, NULL, NULL, NULL);

        return 1;
}