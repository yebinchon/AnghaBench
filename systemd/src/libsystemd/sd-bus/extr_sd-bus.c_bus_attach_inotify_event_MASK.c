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
struct TYPE_5__ {scalar_t__ inotify_fd; int /*<<< orphan*/  inotify_event_source; int /*<<< orphan*/  event_priority; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  io_callback ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(sd_bus *bus) {
        int r;

        FUNC0(bus);

        if (bus->inotify_fd < 0)
                return 0;

        if (!bus->event)
                return 0;

        if (!bus->inotify_event_source) {
                r = FUNC1(bus->event, &bus->inotify_event_source, bus->inotify_fd, EPOLLIN, io_callback, bus);
                if (r < 0)
                        return r;

                r = FUNC4(bus->inotify_event_source, bus->event_priority);
                if (r < 0)
                        return r;

                r = FUNC2(bus->inotify_event_source, "bus-inotify");
        } else
                r = FUNC3(bus->inotify_event_source, bus->inotify_fd);
        if (r < 0)
                return r;

        return 0;
}