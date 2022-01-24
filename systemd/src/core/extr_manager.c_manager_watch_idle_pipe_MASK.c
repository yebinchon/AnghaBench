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
struct TYPE_5__ {scalar_t__* idle_pipe; scalar_t__ idle_pipe_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  manager_dispatch_idle_pipe_fd ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC4(Manager *m) {
        int r;

        FUNC0(m);

        if (m->idle_pipe_event_source)
                return 0;

        if (m->idle_pipe[2] < 0)
                return 0;

        r = FUNC2(m->event, &m->idle_pipe_event_source, m->idle_pipe[2], EPOLLIN, manager_dispatch_idle_pipe_fd, m);
        if (r < 0)
                return FUNC1(r, "Failed to watch idle pipe: %m");

        (void) FUNC3(m->idle_pipe_event_source, "manager-idle-pipe");

        return 0;
}