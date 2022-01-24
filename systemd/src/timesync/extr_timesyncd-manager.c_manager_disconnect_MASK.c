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
struct TYPE_5__ {void* event_timeout; int /*<<< orphan*/  clock_watch_fd; void* event_clock_watch; void* event_timer; int /*<<< orphan*/  resolve_query; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Manager *m) {
        FUNC0(m);

        m->resolve_query = FUNC5(m->resolve_query);

        m->event_timer = FUNC3(m->event_timer);

        FUNC1(m);

        m->event_clock_watch = FUNC3(m->event_clock_watch);
        m->clock_watch_fd = FUNC2(m->clock_watch_fd);

        m->event_timeout = FUNC3(m->event_timeout);

        FUNC4(false, "STATUS=Idle.");
}