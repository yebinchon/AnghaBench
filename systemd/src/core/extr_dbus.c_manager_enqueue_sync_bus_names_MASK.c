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
struct TYPE_5__ {scalar_t__ sync_bus_names_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  SD_EVENT_PRIORITY_IDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  manager_dispatch_sync_bus_names ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC6(Manager *m) {
        int r;

        FUNC0(m);

        /* Enqueues a request to synchronize the bus names in a later event loop iteration. The callers generally don't
         * want us to invoke ->bus_name_owner_change() unit calls from their stack frames as this might result in event
         * dispatching on its own creating loops, hence we simply create a defer event for the event loop and exit. */

        if (m->sync_bus_names_event_source)
                return 0;

        r = FUNC2(m->event, &m->sync_bus_names_event_source, manager_dispatch_sync_bus_names, m);
        if (r < 0)
                return FUNC1(r, "Failed to create bus name synchronization event: %m");

        r = FUNC5(m->sync_bus_names_event_source, SD_EVENT_PRIORITY_IDLE);
        if (r < 0)
                return FUNC1(r, "Failed to set event priority: %m");

        r = FUNC4(m->sync_bus_names_event_source, SD_EVENT_ONESHOT);
        if (r < 0)
                return FUNC1(r, "Failed to set even to oneshot: %m");

        (void) FUNC3(m->sync_bus_names_event_source, "manager-sync-bus-names");
        return 0;
}