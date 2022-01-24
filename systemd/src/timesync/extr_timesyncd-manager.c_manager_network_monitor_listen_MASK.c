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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  manager_network_event_handler ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(Manager *m) {
        int r, fd, events;

        FUNC0(m);

        r = FUNC5(&m->network_monitor, NULL);
        if (r == -ENOENT) {
                FUNC1("systemd does not appear to be running, not listening for systemd-networkd events.");
                return 0;
        }
        if (r < 0)
                return r;

        fd = FUNC4(m->network_monitor);
        if (fd < 0)
                return fd;

        events = FUNC3(m->network_monitor);
        if (events < 0)
                return events;

        r = FUNC2(m->event, &m->network_event_source, fd, events, manager_network_event_handler, m);
        if (r < 0)
                return r;

        return 0;
}