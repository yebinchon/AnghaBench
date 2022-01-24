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
struct TYPE_5__ {scalar_t__ clock_watch_fd; int /*<<< orphan*/  event_clock_watch; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  manager_clock_watch ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(Manager *m) {
        int r;

        FUNC0(m);

        m->event_clock_watch = FUNC4(m->event_clock_watch);
        FUNC2(m->clock_watch_fd);

        m->clock_watch_fd = FUNC5();
        if (m->clock_watch_fd < 0)
                return FUNC1(m->clock_watch_fd, "Failed to create timerfd: %m");

        r = FUNC3(m->event, &m->event_clock_watch, m->clock_watch_fd, EPOLLIN, manager_clock_watch, m);
        if (r < 0)
                return FUNC1(r, "Failed to create clock watch event source: %m");

        return 0;
}