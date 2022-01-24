#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
typedef  int /*<<< orphan*/  NetDev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_netlink *rtnl, sd_netlink_message *m, NetDev *netdev) {
        int r;

        FUNC0(netdev);
        FUNC0(m);

        r = FUNC3(m);
        if (r < 0) {
                FUNC2(netdev, r, "Bridge parameters could not be set: %m");
                return 1;
        }

        FUNC1(netdev, "Bridge parameters set success");

        return 1;
}