#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_15__ {TYPE_1__* manager; } ;
struct TYPE_13__ {int /*<<< orphan*/  monotonic; } ;
struct TYPE_14__ {scalar_t__ watchdog_event_source; TYPE_2__ watchdog_timestamp; } ;
struct TYPE_12__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_3__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  SD_EVENT_PRIORITY_IDLE ; 
 TYPE_8__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  service_dispatch_watchdog ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(Service *s) {
        usec_t watchdog_usec;
        int r;

        FUNC2(s);

        watchdog_usec = FUNC9(s);
        if (FUNC0(watchdog_usec, 0, USEC_INFINITY)) {
                FUNC10(s);
                return;
        }

        if (s->watchdog_event_source) {
                r = FUNC8(s->watchdog_event_source, FUNC11(s->watchdog_timestamp.monotonic, watchdog_usec));
                if (r < 0) {
                        FUNC3(FUNC1(s), r, "Failed to reset watchdog timer: %m");
                        return;
                }

                r = FUNC6(s->watchdog_event_source, SD_EVENT_ONESHOT);
        } else {
                r = FUNC4(
                                FUNC1(s)->manager->event,
                                &s->watchdog_event_source,
                                CLOCK_MONOTONIC,
                                FUNC11(s->watchdog_timestamp.monotonic, watchdog_usec), 0,
                                service_dispatch_watchdog, s);
                if (r < 0) {
                        FUNC3(FUNC1(s), r, "Failed to add watchdog timer: %m");
                        return;
                }

                (void) FUNC5(s->watchdog_event_source, "service-watchdog");

                /* Let's process everything else which might be a sign
                 * of living before we consider a service died. */
                r = FUNC7(s->watchdog_event_source, SD_EVENT_PRIORITY_IDLE);
        }
        if (r < 0)
                FUNC3(FUNC1(s), r, "Failed to install watchdog timer: %m");
}