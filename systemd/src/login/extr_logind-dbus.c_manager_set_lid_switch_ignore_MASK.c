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
typedef  scalar_t__ usec_t ;
struct TYPE_5__ {scalar_t__ lid_switch_ignore_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  lid_switch_ignore_handler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (scalar_t__,scalar_t__*) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 

int FUNC5(Manager *m, usec_t until) {
        int r;

        FUNC0(m);

        if (until <= FUNC1(CLOCK_MONOTONIC))
                return 0;

        /* We want to ignore the lid switch for a while after each
         * suspend, and after boot-up. Hence let's install a timer for
         * this. As long as the event source exists we ignore the lid
         * switch. */

        if (m->lid_switch_ignore_event_source) {
                usec_t u;

                r = FUNC3(m->lid_switch_ignore_event_source, &u);
                if (r < 0)
                        return r;

                if (until <= u)
                        return 0;

                r = FUNC4(m->lid_switch_ignore_event_source, until);
        } else
                r = FUNC2(
                                m->event,
                                &m->lid_switch_ignore_event_source,
                                CLOCK_MONOTONIC,
                                until, 0,
                                lid_switch_ignore_handler, m);

        return r;
}