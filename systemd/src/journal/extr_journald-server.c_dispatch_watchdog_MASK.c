#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_3__ {int send_watchdog; int watchdog_usec; int /*<<< orphan*/  watchdog_event_source; int /*<<< orphan*/  notify_event_source; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(sd_event_source *es, uint64_t usec, void *userdata) {
        Server *s = userdata;
        int r;

        FUNC0(s);

        s->send_watchdog = true;

        r = FUNC3(s->notify_event_source, SD_EVENT_ON);
        if (r < 0)
                FUNC2(r, "Failed to turn on notify event source: %m");

        r = FUNC4(s->watchdog_event_source, usec + s->watchdog_usec / 2);
        if (r < 0)
                return FUNC1(r, "Failed to restart watchdog event source: %m");

        r = FUNC3(s->watchdog_event_source, SD_EVENT_ON);
        if (r < 0)
                return FUNC1(r, "Failed to enable watchdog event source: %m");

        return 0;
}