#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_16__ {int ifindex; char const* ifname; scalar_t__ kind; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_INFO_KIND ; 
 int /*<<< orphan*/  IFLA_LINKINFO ; 
 scalar_t__ NETDEV_KIND_TAP ; 
 scalar_t__ RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (scalar_t__) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,scalar_t__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char const**) ; 
 int FUNC11 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*) ; 

int FUNC13(NetDev *netdev, sd_netlink_message *message) {
        uint16_t type;
        const char *kind;
        const char *received_kind;
        const char *received_name;
        int r, ifindex;

        FUNC0(netdev);
        FUNC0(message);

        r = FUNC9(message, &type);
        if (r < 0)
                return FUNC3(netdev, r, "Could not get rtnl message type: %m");

        if (type != RTM_NEWLINK) {
                FUNC2(netdev, "Cannot set ifindex from unexpected rtnl message type.");
                return -EINVAL;
        }

        r = FUNC11(message, &ifindex);
        if (r < 0) {
                FUNC3(netdev, r, "Could not get ifindex: %m");
                FUNC4(netdev);
                return r;
        } else if (ifindex <= 0) {
                FUNC2(netdev, "Got invalid ifindex: %d", ifindex);
                FUNC4(netdev);
                return -EINVAL;
        }

        if (netdev->ifindex > 0) {
                if (netdev->ifindex != ifindex) {
                        FUNC2(netdev, "Could not set ifindex to %d, already set to %d",
                                         ifindex, netdev->ifindex);
                        FUNC4(netdev);
                        return -EEXIST;
                } else
                        /* ifindex already set to the same for this netdev */
                        return 0;
        }

        r = FUNC10(message, IFLA_IFNAME, &received_name);
        if (r < 0)
                return FUNC3(netdev, r, "Could not get IFNAME: %m");

        if (!FUNC12(netdev->ifname, received_name)) {
                FUNC2(netdev, "Received newlink with wrong IFNAME %s", received_name);
                FUNC4(netdev);
                return r;
        }

        r = FUNC7(message, IFLA_LINKINFO);
        if (r < 0)
                return FUNC3(netdev, r, "Could not get LINKINFO: %m");

        r = FUNC10(message, IFLA_INFO_KIND, &received_kind);
        if (r < 0)
                return FUNC3(netdev, r, "Could not get KIND: %m");

        r = FUNC8(message);
        if (r < 0)
                return FUNC3(netdev, r, "Could not exit container: %m");

        if (netdev->kind == NETDEV_KIND_TAP)
                /* the kernel does not distinguish between tun and tap */
                kind = "tun";
        else {
                kind = FUNC6(netdev->kind);
                if (!kind) {
                        FUNC2(netdev, "Could not get kind");
                        FUNC4(netdev);
                        return -EINVAL;
                }
        }

        if (!FUNC12(kind, received_kind)) {
                FUNC2(netdev,
                                 "Received newlink with wrong KIND %s, "
                                 "expected %s", received_kind, kind);
                FUNC4(netdev);
                return r;
        }

        netdev->ifindex = ifindex;

        FUNC1(netdev, "netdev has index %d", netdev->ifindex);

        FUNC5(netdev);

        return 0;
}