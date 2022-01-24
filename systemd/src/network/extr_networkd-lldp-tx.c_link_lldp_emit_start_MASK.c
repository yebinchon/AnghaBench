#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_10__ {scalar_t__ lldp_emit_event_source; TYPE_2__* manager; int /*<<< orphan*/  lldp_tx_fast; TYPE_1__* network; } ;
struct TYPE_9__ {int /*<<< orphan*/  event; } ;
struct TYPE_8__ {scalar_t__ lldp_emit; } ;
typedef  TYPE_3__ Link ;

/* Variables and functions */
 scalar_t__ LLDP_EMIT_NO ; 
 scalar_t__ LLDP_FAST_TX_USEC ; 
 scalar_t__ LLDP_JITTER_USEC ; 
 int /*<<< orphan*/  LLDP_TX_FAST_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_lldp_timer ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

int FUNC10(Link *link) {
        usec_t next;
        int r;

        FUNC0(link);

        if (!link->network || link->network->lldp_emit == LLDP_EMIT_NO) {
                FUNC2(link);
                return 0;
        }

        /* Starts the LLDP transmission in "fast" mode. If it is already started, turns "fast" mode back on again. */

        link->lldp_tx_fast = LLDP_TX_FAST_INIT;

        next = FUNC9(FUNC9(FUNC3(FUNC1()), LLDP_FAST_TX_USEC),
                     (usec_t) FUNC4() % LLDP_JITTER_USEC);

        if (link->lldp_emit_event_source) {
                usec_t old;

                /* Lower the timeout, maybe */
                r = FUNC6(link->lldp_emit_event_source, &old);
                if (r < 0)
                        return r;

                if (old <= next)
                        return 0;

                return FUNC8(link->lldp_emit_event_source, next);
        } else {
                r = FUNC5(
                                link->manager->event,
                                &link->lldp_emit_event_source,
                                FUNC1(),
                                next,
                                0,
                                on_lldp_timer,
                                link);
                if (r < 0)
                        return r;

                (void) FUNC7(link->lldp_emit_event_source, "lldp-tx");
        }

        return 0;
}