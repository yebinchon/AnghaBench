#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  link_netlink_message_handler_t ;
struct TYPE_8__ {struct TYPE_8__* rtnl; struct TYPE_8__* manager; } ;
typedef  TYPE_1__ NetDev ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
#define  NETDEV_CREATE_AFTER_CONFIGURED 130 
#define  NETDEV_CREATE_MASTER 129 
#define  NETDEV_CREATE_STACKED 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(NetDev *netdev, Link *link, link_netlink_message_handler_t callback) {
        int r;

        FUNC0(netdev);
        FUNC0(netdev->manager);
        FUNC0(netdev->manager->rtnl);

        switch (FUNC5(netdev)) {
        case NETDEV_CREATE_MASTER:
                r = FUNC4(netdev, link, callback);
                if (r < 0)
                        return r;

                break;
        case NETDEV_CREATE_STACKED:
                r = FUNC2(netdev, link, callback);
                if (r < 0)
                        return r;

                break;
        case NETDEV_CREATE_AFTER_CONFIGURED:
                r = FUNC3(netdev, link);
                if (r < 0)
                        return r;
                break;
        default:
                FUNC1("Can not join independent netdev");
        }

        return 0;
}