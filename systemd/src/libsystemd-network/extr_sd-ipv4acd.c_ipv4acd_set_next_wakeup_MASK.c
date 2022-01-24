#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
struct TYPE_5__ {int /*<<< orphan*/  event_priority; int /*<<< orphan*/  timer_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ sd_ipv4acd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ipv4acd_on_timeout ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(sd_ipv4acd *acd, usec_t usec, usec_t random_usec) {
        usec_t next_timeout, time_now;

        FUNC0(acd);

        next_timeout = usec;

        if (random_usec > 0)
                next_timeout += (usec_t) FUNC4() % random_usec;

        FUNC1(FUNC5(acd->event, FUNC2(), &time_now) >= 0);

        return FUNC3(acd->event, &acd->timer_event_source,
                                FUNC2(),
                                time_now + next_timeout, 0,
                                ipv4acd_on_timeout, acd,
                                acd->event_priority, "ipv4acd-timer", true);
}