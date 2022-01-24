#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        FUNC1(link);

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 1;

        r = FUNC3(m);
        if (r < 0)
                FUNC2(link, r, "Could not set address genmode for interface, ignoring: %m");

        return 1;
}