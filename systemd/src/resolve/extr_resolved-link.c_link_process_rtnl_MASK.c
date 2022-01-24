#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ifname; int /*<<< orphan*/  operstate; int /*<<< orphan*/  mtu; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IFLA_OPERSTATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC8(Link *l, sd_netlink_message *m) {
        const char *n = NULL;
        int r;

        FUNC0(l);
        FUNC0(m);

        r = FUNC7(m, &l->flags);
        if (r < 0)
                return r;

        (void) FUNC5(m, IFLA_MTU, &l->mtu);
        (void) FUNC6(m, IFLA_OPERSTATE, &l->operstate);

        if (FUNC4(m, IFLA_IFNAME, &n) >= 0) {
                r = FUNC1(&l->ifname, n);
                if (r < 0)
                        return r;
        }

        FUNC3(l);
        FUNC2(l, false);

        return 0;
}