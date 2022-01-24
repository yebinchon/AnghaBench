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
struct TYPE_6__ {scalar_t__ time_change_fd; int /*<<< orphan*/  time_change_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  manager_dispatch_time_change_fd ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int FUNC10(Manager *m) {
        int r;

        FUNC1(m);

        if (FUNC0(m))
                return 0;

        m->time_change_event_source = FUNC8(m->time_change_event_source);
        m->time_change_fd = FUNC4(m->time_change_fd);

        m->time_change_fd = FUNC9();
        if (m->time_change_fd < 0)
                return FUNC3(m->time_change_fd, "Failed to create timer change timer fd: %m");

        r = FUNC5(m->event, &m->time_change_event_source, m->time_change_fd, EPOLLIN, manager_dispatch_time_change_fd, m);
        if (r < 0)
                return FUNC3(r, "Failed to create time change event source: %m");

        /* Schedule this slightly earlier than the .timer event sources */
        r = FUNC7(m->time_change_event_source, SD_EVENT_PRIORITY_NORMAL-1);
        if (r < 0)
                return FUNC3(r, "Failed to set priority of time change event sources: %m");

        (void) FUNC6(m->time_change_event_source, "manager-time-change");

        FUNC2("Set up TFD_TIMER_CANCEL_ON_SET timerfd.");

        return 0;
}