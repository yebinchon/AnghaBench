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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
typedef  int /*<<< orphan*/  NetDev ;
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
#define  RTM_DELLINK 129 
#define  RTM_NEWLINK 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int FUNC16 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC17(sd_netlink *rtnl, sd_netlink_message *message, void *userdata) {
        Manager *m = userdata;
        Link *link = NULL;
        NetDev *netdev = NULL;
        uint16_t type;
        const char *name;
        int r, ifindex;

        FUNC1(rtnl);
        FUNC1(message);
        FUNC1(m);

        if (FUNC14(message)) {
                r = FUNC12(message);
                if (r < 0)
                        FUNC8(r, "rtnl: Could not receive link message, ignoring: %m");

                return 0;
        }

        r = FUNC13(message, &type);
        if (r < 0) {
                FUNC8(r, "rtnl: Could not get message type, ignoring: %m");
                return 0;
        } else if (!FUNC0(type, RTM_NEWLINK, RTM_DELLINK)) {
                FUNC7("rtnl: Received unexpected message type %u when processing link, ignoring.", type);
                return 0;
        }

        r = FUNC16(message, &ifindex);
        if (r < 0) {
                FUNC8(r, "rtnl: Could not get ifindex from link message, ignoring: %m");
                return 0;
        } else if (ifindex <= 0) {
                FUNC7("rtnl: received link message with invalid ifindex %d, ignoring.", ifindex);
                return 0;
        }

        r = FUNC15(message, IFLA_IFNAME, &name);
        if (r < 0) {
                FUNC8(r, "rtnl: Received link message without ifname, ignoring: %m");
                return 0;
        }

        (void) FUNC5(m, ifindex, &link);
        (void) FUNC10(m, name, &netdev);

        switch (type) {
        case RTM_NEWLINK:
                if (!link) {
                        /* link is new, so add it */
                        r = FUNC3(m, message, &link);
                        if (r < 0) {
                                FUNC8(r, "Could not process new link message, ignoring: %m");
                                return 0;
                        }
                }

                if (netdev) {
                        /* netdev exists, so make sure the ifindex matches */
                        r = FUNC11(netdev, message);
                        if (r < 0) {
                                FUNC8(r, "Could not process new link message for netdev, ignoring: %m");
                                return 0;
                        }
                }

                r = FUNC6(link, message);
                if (r < 0) {
                        FUNC8(r, "Could not process link message, ignoring: %m");
                        return 0;
                }

                break;

        case RTM_DELLINK:
                FUNC4(link);
                FUNC9(netdev);

                break;

        default:
                FUNC2("Received link message with invalid RTNL message type.");
        }

        return 1;
}