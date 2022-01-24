#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  until; } ;
typedef  TYPE_1__ sd_lldp_neighbor ;
struct TYPE_10__ {int /*<<< orphan*/  event_priority; int /*<<< orphan*/  timer_event_source; int /*<<< orphan*/  event; int /*<<< orphan*/  neighbor_by_expiry; } ;
typedef  TYPE_2__ sd_lldp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  on_timer_event ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_lldp *lldp, sd_lldp_neighbor *neighbor) {
        sd_lldp_neighbor *n;

        FUNC0(lldp);

        if (neighbor)
                FUNC4(neighbor);

        n = FUNC5(lldp->neighbor_by_expiry);
        if (!n)
                return FUNC3(lldp->timer_event_source);

        if (!lldp->event)
                return 0;

        return FUNC2(lldp->event, &lldp->timer_event_source,
                                FUNC1(),
                                n->until, 0,
                                on_timer_event, lldp,
                                lldp->event_priority, "lldp-timer", true);
}