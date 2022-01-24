#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct ifla_vlan_flags {int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; } ;
struct TYPE_14__ {int gvrp; int mvrp; int reorder_hdr; int loose_binding; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ VLan ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_VLAN_FLAGS ; 
 int /*<<< orphan*/  IFLA_VLAN_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  VLAN_FLAG_GVRP ; 
 int /*<<< orphan*/  VLAN_FLAG_LOOSE_BINDING ; 
 int /*<<< orphan*/  VLAN_FLAG_MVRP ; 
 int /*<<< orphan*/  VLAN_FLAG_REORDER_HDR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct ifla_vlan_flags*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(NetDev *netdev, Link *link, sd_netlink_message *req) {
        struct ifla_vlan_flags flags = {};
        VLan *v;
        int r;

        FUNC2(netdev);
        FUNC2(link);
        FUNC2(req);

        v = FUNC1(netdev);

        FUNC2(v);

        r = FUNC5(req, IFLA_VLAN_ID, v->id);
        if (r < 0)
                return FUNC3(netdev, r, "Could not append IFLA_VLAN_ID attribute: %m");

        if (v->gvrp != -1) {
                flags.mask |= VLAN_FLAG_GVRP;
                FUNC0(flags.flags, VLAN_FLAG_GVRP, v->gvrp);
        }

        if (v->mvrp != -1) {
                flags.mask |= VLAN_FLAG_MVRP;
                FUNC0(flags.flags, VLAN_FLAG_MVRP, v->mvrp);
        }

        if (v->reorder_hdr != -1) {
                flags.mask |= VLAN_FLAG_REORDER_HDR;
                FUNC0(flags.flags, VLAN_FLAG_REORDER_HDR, v->reorder_hdr);
        }

        if (v->loose_binding != -1) {
                flags.mask |= VLAN_FLAG_LOOSE_BINDING;
                FUNC0(flags.flags, VLAN_FLAG_LOOSE_BINDING, v->loose_binding);
        }

        r = FUNC4(req, IFLA_VLAN_FLAGS, &flags, sizeof(struct ifla_vlan_flags));
        if (r < 0)
                return FUNC3(netdev, r, "Could not append IFLA_VLAN_FLAGS attribute: %m");

        return 0;
}