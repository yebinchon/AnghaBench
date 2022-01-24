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
struct TYPE_5__ {int /*<<< orphan*/  event; scalar_t__ bus; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (scalar_t__*,char*) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  manager_vtable ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(Manager *m) {
        int r;

        FUNC0(m);

        if (m->bus)
                return 0;

        r = FUNC1(&m->bus, "bus-api-timesync");
        if (r < 0)
                return FUNC2(r, "Failed to connect to bus: %m");

        r = FUNC3(m->bus, NULL, "/org/freedesktop/timesync1", "org.freedesktop.timesync1.Manager", manager_vtable, m);
        if (r < 0)
                return FUNC2(r, "Failed to add manager object vtable: %m");

        r = FUNC5(m->bus, NULL, "org.freedesktop.timesync1", 0, NULL, NULL);
        if (r < 0)
                return FUNC2(r, "Failed to request name: %m");

        r = FUNC4(m->bus, m->event, 0);
        if (r < 0)
                return FUNC2(r, "Failed to attach bus to event loop: %m");

        return 0;
}