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
struct TYPE_5__ {int /*<<< orphan*/  network_event_source; int /*<<< orphan*/  event; int /*<<< orphan*/  network_monitor; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ SD_EVENT_PRIORITY_IMPORTANT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  on_network_event ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(Manager *m) {
        int r, fd, events;

        FUNC0(m);

        r = FUNC6(&m->network_monitor, NULL);
        if (r < 0)
                return r;

        fd = FUNC5(m->network_monitor);
        if (fd < 0)
                return fd;

        events = FUNC4(m->network_monitor);
        if (events < 0)
                return events;

        r = FUNC1(m->event, &m->network_event_source, fd, events, &on_network_event, m);
        if (r < 0)
                return r;

        r = FUNC3(m->network_event_source, SD_EVENT_PRIORITY_IMPORTANT+5);
        if (r < 0)
                return r;

        (void) FUNC2(m->network_event_source, "network-monitor");

        return 0;
}