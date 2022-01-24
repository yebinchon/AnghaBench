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
typedef  int /*<<< orphan*/  sd_netlink_message ;
struct TYPE_12__ {scalar_t__ kind; scalar_t__ mode; struct TYPE_12__* ifname; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ MacVlan ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_MACVLAN_MODE ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ NETDEV_KIND_MACVLAN ; 
 scalar_t__ _NETDEV_MACVLAN_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(NetDev *netdev, Link *link, sd_netlink_message *req) {
        MacVlan *m;
        int r;

        FUNC2(netdev);
        FUNC2(link);
        FUNC2(netdev->ifname);

        if (netdev->kind == NETDEV_KIND_MACVLAN)
                m = FUNC0(netdev);
        else
                m = FUNC1(netdev);

        FUNC2(m);

        if (m->mode != _NETDEV_MACVLAN_MODE_INVALID) {
                r = FUNC4(req, IFLA_MACVLAN_MODE, m->mode);
                if (r < 0)
                        return FUNC3(netdev, r, "Could not append IFLA_MACVLAN_MODE attribute: %m");
        }

        return 0;
}