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
typedef  int usec_t ;
typedef  void sd_event_source ;
struct TYPE_6__ {scalar_t__ lldp_tx_fast; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int LLDP_FAST_TX_USEC ; 
 int LLDP_JITTER_USEC ; 
 int LLDP_TX_INTERVAL_USEC ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,char*) ; 
 int FUNC6 (TYPE_1__*,int,char*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*,int) ; 
 int FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(sd_event_source *s, usec_t t, void *userdata) {
        Link *link = userdata;
        usec_t current, delay, next;
        int r;

        FUNC0(s);
        FUNC0(userdata);

        FUNC4(link, "Sending LLDP packet...");

        r = FUNC3(link);
        if (r < 0)
                FUNC5(link, r, "Failed to send LLDP packet, ignoring: %m");

        if (link->lldp_tx_fast > 0)
                link->lldp_tx_fast--;

        FUNC1(FUNC8(FUNC9(s), FUNC2(), &current) >= 0);

        delay = link->lldp_tx_fast > 0 ? LLDP_FAST_TX_USEC : LLDP_TX_INTERVAL_USEC;
        next = FUNC12(FUNC12(current, delay), (usec_t) FUNC7() % LLDP_JITTER_USEC);

        r = FUNC11(s, next);
        if (r < 0)
                return FUNC6(link, r, "Failed to restart LLDP timer: %m");

        r = FUNC10(s, SD_EVENT_ONESHOT);
        if (r < 0)
                return FUNC6(link, r, "Failed to enable LLDP timer: %m");

        return 0;
}