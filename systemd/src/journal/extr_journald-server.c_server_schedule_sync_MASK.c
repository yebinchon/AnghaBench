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
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_6__ {int sync_scheduled; scalar_t__ sync_interval_usec; int /*<<< orphan*/  sync_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int LOG_CRIT ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  SD_EVENT_PRIORITY_IMPORTANT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_dispatch_sync ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(Server *s, int priority) {
        int r;

        FUNC0(s);

        if (priority <= LOG_CRIT) {
                /* Immediately sync to disk when this is of priority CRIT, ALERT, EMERG */
                FUNC6(s);
                return 0;
        }

        if (s->sync_scheduled)
                return 0;

        if (s->sync_interval_usec > 0) {
                usec_t when;

                r = FUNC2(s->event, CLOCK_MONOTONIC, &when);
                if (r < 0)
                        return r;

                when += s->sync_interval_usec;

                if (!s->sync_event_source) {
                        r = FUNC1(
                                        s->event,
                                        &s->sync_event_source,
                                        CLOCK_MONOTONIC,
                                        when, 0,
                                        server_dispatch_sync, s);
                        if (r < 0)
                                return r;

                        r = FUNC4(s->sync_event_source, SD_EVENT_PRIORITY_IMPORTANT);
                } else {
                        r = FUNC5(s->sync_event_source, when);
                        if (r < 0)
                                return r;

                        r = FUNC3(s->sync_event_source, SD_EVENT_ONESHOT);
                }
                if (r < 0)
                        return r;

                s->sync_scheduled = true;
        }

        return 0;
}