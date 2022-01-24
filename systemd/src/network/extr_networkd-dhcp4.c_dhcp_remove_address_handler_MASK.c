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
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
struct TYPE_6__ {int /*<<< orphan*/  dhcp_client; int /*<<< orphan*/  manager; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        FUNC1(link);

        /* This is only used when retrying to assign the address received from DHCPv4 server.
         * See dhcp4_route_handler(). */

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = FUNC5(m);
        if (r < 0)
                FUNC3(link, r, "Failed to remove DHCPv4 address, ignoring: %m");
        else
                (void) FUNC4(rtnl, m, link->manager);

        (void) FUNC2(link->dhcp_client, link);
        return 1;
}