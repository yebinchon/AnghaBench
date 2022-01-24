#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_6__ {scalar_t__ realtime; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ on_clock_change; TYPE_1__ last_trigger; } ;
typedef  TYPE_2__ Timer ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TIMER_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC6(Unit *u) {
        Timer *t = FUNC0(u);
        usec_t ts;

        FUNC1(u);

        if (t->state != TIMER_WAITING)
                return;

        /* If we appear to have triggered in the future, the system clock must
         * have been set backwards.  So let's rewind our own clock and allow
         * the future trigger(s) to happen again :).  Exactly the same as when
         * you start a timer unit with Persistent=yes. */
        ts = FUNC3(CLOCK_REALTIME);
        if (t->last_trigger.realtime > ts)
                t->last_trigger.realtime = ts;

        if (t->on_clock_change) {
                FUNC2(u, "Time change, triggering activation.");
                FUNC4(t);
        } else {
                FUNC2(u, "Time change, recalculating next elapse.");
                FUNC5(t, true);
        }
}