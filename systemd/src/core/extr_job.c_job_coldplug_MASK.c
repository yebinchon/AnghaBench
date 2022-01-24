#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_12__ {scalar_t__ state; scalar_t__ begin_usec; scalar_t__ begin_running_usec; int /*<<< orphan*/  timer_event_source; TYPE_2__* manager; TYPE_1__* unit; } ;
struct TYPE_11__ {int /*<<< orphan*/  event; } ;
struct TYPE_10__ {scalar_t__ job_timeout; scalar_t__ job_running_timeout; } ;
typedef  TYPE_3__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ JOB_WAITING ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  job_dispatch_timer ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

int FUNC11(Job *j) {
        int r;
        usec_t timeout_time = USEC_INFINITY;

        FUNC1(j);

        /* After deserialization is complete and the bus connection
         * set up again, let's start watching our subscribers again */
        (void) FUNC2(j);

        if (j->state == JOB_WAITING)
                FUNC4(j);

        /* Maybe due to new dependencies we don't actually need this job anymore? */
        FUNC3(j);

        /* Create timer only when job began or began running and the respective timeout is finite.
         * Follow logic of job_start_timer() if both timeouts are finite */
        if (j->begin_usec == 0)
                return 0;

        if (j->unit->job_timeout != USEC_INFINITY)
                timeout_time = FUNC10(j->begin_usec, j->unit->job_timeout);

        if (FUNC9(j->begin_running_usec))
                timeout_time = FUNC0(timeout_time, FUNC10(j->begin_running_usec, j->unit->job_running_timeout));

        if (timeout_time == USEC_INFINITY)
                return 0;

        j->timer_event_source = FUNC8(j->timer_event_source);

        r = FUNC6(
                        j->manager->event,
                        &j->timer_event_source,
                        CLOCK_MONOTONIC,
                        timeout_time, 0,
                        job_dispatch_timer, j);
        if (r < 0)
                FUNC5(r, "Failed to restart timeout for job: %m");

        (void) FUNC7(j->timer_event_source, "job-timeout");

        return r;
}