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
typedef  int /*<<< orphan*/  v ;
typedef  scalar_t__ usec_t ;
struct TYPE_4__ {int warned_clamping_cpu_quota_period; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 scalar_t__ CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC ; 
 int FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static usec_t FUNC3(Unit *u, usec_t period, usec_t quota) {
        usec_t new_period;

        if (quota == USEC_INFINITY)
                /* Always use default period for infinity quota. */
                return CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC;

        if (period == USEC_INFINITY)
                /* Default period was requested. */
                period = CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC;

        /* Clamp to interval [1ms, 1s] */
        new_period = FUNC0(period, quota, USEC_PER_MSEC, USEC_PER_SEC);

        if (new_period != period) {
                char v[FORMAT_TIMESPAN_MAX];
                FUNC2(u, u->warned_clamping_cpu_quota_period ? LOG_DEBUG : LOG_WARNING, 0,
                              "Clamping CPU interval for cpu.max: period is now %s",
                              FUNC1(v, sizeof(v), new_period, 1));
                u->warned_clamping_cpu_quota_period = true;
        }

        return new_period;
}