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
struct TYPE_5__ {int /*<<< orphan*/  name; struct TYPE_5__* tunnel; } ;
typedef  int /*<<< orphan*/  NetDev ;
typedef  TYPE_1__ L2tpSession ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sd_netlink *rtnl, sd_netlink_message *m, L2tpSession *session) {
        NetDev *netdev;
        int r;

        FUNC1(session);
        FUNC1(session->tunnel);

        netdev = FUNC0(session->tunnel);

        r = FUNC5(m);
        if (r == -EEXIST)
                FUNC3(netdev, "L2TP session %s exists, using existing without changing its parameters",
                                session->name);
        else if (r < 0) {
                FUNC4(netdev, r, "L2TP session %s could not be created: %m", session->name);
                return 1;
        }

        FUNC2(netdev, "L2TP session %s created", session->name);
        return 1;
}