#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {int timeout_idle_usec; scalar_t__ expire_event_source; } ;
struct TYPE_8__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ Automount ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 TYPE_6__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  automount_dispatch_expire ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(Automount *a) {
        int r;
        usec_t timeout;

        FUNC2(a);

        if (a->timeout_idle_usec == 0)
                return 0;

        timeout = FUNC3(CLOCK_MONOTONIC) + FUNC0(a->timeout_idle_usec/3, USEC_PER_SEC);

        if (a->expire_event_source) {
                r = FUNC7(a->expire_event_source, timeout);
                if (r < 0)
                        return r;

                return FUNC6(a->expire_event_source, SD_EVENT_ONESHOT);
        }

        r = FUNC4(
                        FUNC1(a)->manager->event,
                        &a->expire_event_source,
                        CLOCK_MONOTONIC, timeout, 0,
                        automount_dispatch_expire, a);
        if (r < 0)
                return r;

        (void) FUNC5(a->expire_event_source, "automount-expire");

        return 0;
}