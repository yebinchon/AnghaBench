#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_8__ {scalar_t__ timer_event_source; TYPE_2__* manager; TYPE_1__* unit; void* begin_usec; void* begin_running_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {scalar_t__ job_running_timeout; scalar_t__ job_timeout; } ;
typedef  TYPE_3__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  job_dispatch_timer ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (void*,scalar_t__) ; 

int FUNC6(Job *j, bool job_running) {
        int r;
        usec_t timeout_time, old_timeout_time;

        if (job_running) {
                j->begin_running_usec = FUNC0(CLOCK_MONOTONIC);

                if (j->unit->job_running_timeout == USEC_INFINITY)
                        return 0;

                timeout_time = FUNC5(j->begin_running_usec, j->unit->job_running_timeout);

                if (j->timer_event_source) {
                        /* Update only if JobRunningTimeoutSec= results in earlier timeout */
                        r = FUNC2(j->timer_event_source, &old_timeout_time);
                        if (r < 0)
                                return r;

                        if (old_timeout_time <= timeout_time)
                                return 0;

                        return FUNC4(j->timer_event_source, timeout_time);
                }
        } else {
                if (j->timer_event_source)
                        return 0;

                j->begin_usec = FUNC0(CLOCK_MONOTONIC);

                if (j->unit->job_timeout == USEC_INFINITY)
                        return 0;

                timeout_time = FUNC5(j->begin_usec, j->unit->job_timeout);
        }

        r = FUNC1(
                        j->manager->event,
                        &j->timer_event_source,
                        CLOCK_MONOTONIC,
                        timeout_time, 0,
                        job_dispatch_timer, j);
        if (r < 0)
                return r;

        (void) FUNC3(j->timer_event_source, "job-start");

        return 0;
}