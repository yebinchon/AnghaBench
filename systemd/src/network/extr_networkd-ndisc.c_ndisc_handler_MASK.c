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
typedef  int /*<<< orphan*/  sd_ndisc_router ;
typedef  int sd_ndisc_event ;
typedef  int /*<<< orphan*/  sd_ndisc ;
struct TYPE_6__ {int ndisc_configured; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
#define  SD_NDISC_EVENT_ROUTER 129 
#define  SD_NDISC_EVENT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(sd_ndisc *nd, sd_ndisc_event event, sd_ndisc_router *rt, void *userdata) {
        Link *link = userdata;

        FUNC1(link);

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return;

        switch (event) {

        case SD_NDISC_EVENT_ROUTER:
                (void) FUNC4(link, rt);
                break;

        case SD_NDISC_EVENT_TIMEOUT:
                link->ndisc_configured = true;
                FUNC2(link);

                break;
        default:
                FUNC3(link, "IPv6 Neighbor Discovery unknown event: %d", event);
        }
}