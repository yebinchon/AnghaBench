#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {scalar_t__ kind; scalar_t__ key; scalar_t__ ikey; scalar_t__ okey; int /*<<< orphan*/  remote; int /*<<< orphan*/  family; int /*<<< orphan*/  local; scalar_t__ assign_to_loopback; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ Tunnel ;
struct TYPE_17__ {int /*<<< orphan*/  ifindex; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_4__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_VTI_IKEY ; 
 int /*<<< orphan*/  IFLA_VTI_LINK ; 
 int /*<<< orphan*/  IFLA_VTI_LOCAL ; 
 int /*<<< orphan*/  IFLA_VTI_OKEY ; 
 int /*<<< orphan*/  IFLA_VTI_REMOTE ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 scalar_t__ NETDEV_KIND_VTI ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_1__*,int,char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(NetDev *netdev, Link *link, sd_netlink_message *m) {
        uint32_t ikey, okey;
        Tunnel *t;
        int r;

        FUNC2(netdev);
        FUNC2(m);

        if (netdev->kind == NETDEV_KIND_VTI)
                t = FUNC0(netdev);
        else
                t = FUNC1(netdev);

        FUNC2(t);

        if (link || t->assign_to_loopback) {
                r = FUNC6(m, IFLA_VTI_LINK, link ? link->ifindex : LOOPBACK_IFINDEX);
                if (r < 0)
                        return FUNC4(netdev, r, "Could not append IFLA_VTI_LINK attribute: %m");
        }

        if (t->key != 0)
                ikey = okey = FUNC3(t->key);
        else {
                ikey = FUNC3(t->ikey);
                okey = FUNC3(t->okey);
        }

        r = FUNC6(m, IFLA_VTI_IKEY, ikey);
        if (r < 0)
                return FUNC4(netdev, r, "Could not append IFLA_VTI_IKEY attribute: %m");

        r = FUNC6(m, IFLA_VTI_OKEY, okey);
        if (r < 0)
                return FUNC4(netdev, r, "Could not append IFLA_VTI_OKEY attribute: %m");

        r = FUNC5(m, IFLA_VTI_LOCAL, t->family, &t->local);
        if (r < 0)
                return FUNC4(netdev, r, "Could not append IFLA_VTI_LOCAL attribute: %m");

        r = FUNC5(m, IFLA_VTI_REMOTE, t->family, &t->remote);
        if (r < 0)
                return FUNC4(netdev, r, "Could not append IFLA_VTI_REMOTE attribute: %m");

        return r;
}