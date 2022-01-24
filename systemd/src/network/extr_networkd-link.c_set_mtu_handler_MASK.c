#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int setting_mtu; scalar_t__ state; struct TYPE_11__* ifname; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 scalar_t__ LINK_STATE_INITIALIZED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,char*) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        FUNC1(m);
        FUNC1(link);
        FUNC1(link->ifname);

        link->setting_mtu = false;

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = FUNC6(m);
        if (r < 0)
                FUNC5(link, r, "Could not set MTU, ignoring: %m");
        else
                FUNC4(link, "Setting MTU done.");

        if (link->state == LINK_STATE_INITIALIZED) {
                r = FUNC2(link);
                if (r < 0)
                        FUNC3(link);
        }

        return 1;
}