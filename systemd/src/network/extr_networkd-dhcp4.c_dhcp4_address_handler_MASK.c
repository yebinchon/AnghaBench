#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
struct TYPE_10__ {scalar_t__ dhcp4_messages; int dhcp4_configured; int /*<<< orphan*/  manager; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        FUNC1(link);

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = FUNC9(m);
        if (r < 0 && r != -EEXIST) {
                FUNC7(link, r, "Could not set DHCPv4 address: %m");
                FUNC4(link);
                return 1;
        } else if (r >= 0)
                (void) FUNC8(rtnl, m, link->manager);

        r = FUNC6(link);
        if (r < 0) {
                FUNC4(link);
                return 1;
        }

        /* Add back static routes since kernel removes while DHCPv4 address is removed from when lease expires */
        r = FUNC5(link);
        if (r < 0) {
                FUNC4(link);
                return 1;
        }

        if (link->dhcp4_messages == 0) {
                link->dhcp4_configured = true;
                /* The new address is configured, and no route is requested.
                 * Let's drop the old lease. */
                FUNC2(link);
                FUNC3(link);
        }

        return 1;
}