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
struct TYPE_5__ {scalar_t__ event_timer; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  manager_timer ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(Manager *m, usec_t next) {
        int r;

        FUNC0(m);

        if (next == 0) {
                m->event_timer = FUNC6(m->event_timer);
                return 0;
        }

        if (m->event_timer) {
                r = FUNC5(m->event_timer, FUNC2(FUNC1()) + next);
                if (r < 0)
                        return r;

                return FUNC4(m->event_timer, SD_EVENT_ONESHOT);
        }

        return FUNC3(
                        m->event,
                        &m->event_timer,
                        FUNC1(),
                        FUNC2(FUNC1()) + next, 0,
                        manager_timer, m);
}