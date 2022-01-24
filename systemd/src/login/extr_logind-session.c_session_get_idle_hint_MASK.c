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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  dual_timestamp ;
struct TYPE_6__ {int idle_hint; TYPE_1__* manager; int /*<<< orphan*/  idle_hint_timestamp; int /*<<< orphan*/  leader; scalar_t__ tty; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {scalar_t__ idle_action_usec; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(Session *s, dual_timestamp *t) {
        usec_t atime = 0, n;
        int r;

        FUNC1(s);

        /* Explicit idle hint is set */
        if (s->idle_hint) {
                if (t)
                        *t = s->idle_hint_timestamp;

                return s->idle_hint;
        }

        /* Graphical sessions should really implement a real
         * idle hint logic */
        if (FUNC0(s->type))
                goto dont_know;

        /* For sessions with an explicitly configured tty, let's check
         * its atime */
        if (s->tty) {
                r = FUNC4(s->tty, &atime);
                if (r >= 0)
                        goto found_atime;
        }

        /* For sessions with a leader but no explicitly configured
         * tty, let's check the controlling tty of the leader */
        if (FUNC6(s->leader)) {
                r = FUNC3(s->leader, &atime);
                if (r >= 0)
                        goto found_atime;
        }

dont_know:
        if (t)
                *t = s->idle_hint_timestamp;

        return 0;

found_atime:
        if (t)
                FUNC2(t, atime);

        n = FUNC5(CLOCK_REALTIME);

        if (s->manager->idle_action_usec <= 0)
                return 0;

        return atime + s->manager->idle_action_usec <= n;
}