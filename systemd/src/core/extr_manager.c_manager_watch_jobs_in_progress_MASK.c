#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_6__ {scalar_t__ jobs_in_progress_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ JOBS_IN_PROGRESS_WAIT_USEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  manager_dispatch_jobs_in_progress ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 

__attribute__((used)) static void FUNC5(Manager *m) {
        usec_t next;
        int r;

        FUNC0(m);

        /* We do not want to show the cylon animation if the user
         * needs to confirm service executions otherwise confirmation
         * messages will be screwed by the cylon animation. */
        if (!FUNC1(m))
                return;

        if (m->jobs_in_progress_event_source)
                return;

        next = FUNC2(CLOCK_MONOTONIC) + JOBS_IN_PROGRESS_WAIT_USEC;
        r = FUNC3(
                        m->event,
                        &m->jobs_in_progress_event_source,
                        CLOCK_MONOTONIC,
                        next, 0,
                        manager_dispatch_jobs_in_progress, m);
        if (r < 0)
                return;

        (void) FUNC4(m->jobs_in_progress_event_source, "manager-jobs-in-progress");
}