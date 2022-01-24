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
struct TYPE_12__ {scalar_t__ kind; scalar_t__ mode; scalar_t__ flags; struct TYPE_12__* ifname; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ Link ;
typedef  TYPE_1__ IPVlan ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_IPVLAN_FLAGS ; 
 int /*<<< orphan*/  IFLA_IPVLAN_MODE ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ NETDEV_KIND_IPVLAN ; 
 scalar_t__ _NETDEV_IPVLAN_FLAGS_INVALID ; 
 scalar_t__ _NETDEV_IPVLAN_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(NetDev *netdev, Link *link, sd_netlink_message *req) {
        IPVlan *m;
        int r;

        FUNC2(netdev);
        FUNC2(link);
        FUNC2(netdev->ifname);

        if (netdev->kind == NETDEV_KIND_IPVLAN)
                m = FUNC0(netdev);
        else
                m = FUNC1(netdev);

        FUNC2(m);

        if (m->mode != _NETDEV_IPVLAN_MODE_INVALID) {
                r = FUNC4(req, IFLA_IPVLAN_MODE, m->mode);
                if (r < 0)
                        return FUNC3(netdev, r, "Could not append IFLA_IPVLAN_MODE attribute: %m");
        }

        if (m->flags != _NETDEV_IPVLAN_FLAGS_INVALID) {
                r = FUNC4(req, IFLA_IPVLAN_FLAGS, m->flags);
                if (r < 0)
                        return FUNC3(netdev, r, "Could not append IFLA_IPVLAN_FLAGS attribute: %m");
        }

        return 0;
}