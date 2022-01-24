#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_ipv4ll ;
struct TYPE_9__ {int /*<<< orphan*/  state; struct TYPE_9__* network; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
#define  SD_IPV4LL_EVENT_BIND 130 
#define  SD_IPV4LL_EVENT_CONFLICT 129 
#define  SD_IPV4LL_EVENT_STOP 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sd_ipv4ll *ll, int event, void *userdata) {
        Link *link = userdata;
        int r;

        FUNC1(link);
        FUNC1(link->network);

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return;

        switch(event) {
                case SD_IPV4LL_EVENT_STOP:
                        r = FUNC3(link);
                        if (r < 0) {
                                FUNC4(link);
                                return;
                        }
                        break;
                case SD_IPV4LL_EVENT_CONFLICT:
                        r = FUNC3(link);
                        if (r < 0) {
                                FUNC4(link);
                                return;
                        }

                        r = FUNC8(ll);
                        if (r < 0)
                                FUNC7(link, r, "Could not acquire IPv4 link-local address: %m");
                        break;
                case SD_IPV4LL_EVENT_BIND:
                        r = FUNC2(ll, link);
                        if (r < 0) {
                                FUNC5(link, "Failed to configure ipv4ll address: %m");
                                FUNC4(link);
                                return;
                        }
                        break;
                default:
                        FUNC6(link, "IPv4 link-local unknown event: %d", event);
                        break;
        }
}