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
typedef  int uint16_t ;
struct TYPE_12__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ sd_netlink ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RTM_DELLINK 129 
#define  RTM_NEWLINK 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ **,int,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int FUNC13 (TYPE_1__*,int*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,char const**) ; 
 int FUNC15 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC16(sd_netlink *rtnl, sd_netlink_message *mm, void *userdata) {
        Manager *m = userdata;
        uint16_t type;
        Link *l;
        const char *ifname;
        int ifindex, r;

        FUNC1(rtnl);
        FUNC1(m);
        FUNC1(mm);

        r = FUNC13(mm, &type);
        if (r < 0) {
                FUNC12(r, "rtnl: Could not get message type, ignoring: %m");
                return 0;
        }

        r = FUNC15(mm, &ifindex);
        if (r < 0) {
                FUNC12(r, "rtnl: Could not get ifindex from link, ignoring: %m");
                return 0;
        } else if (ifindex <= 0) {
                FUNC11("rtnl: received link message with invalid ifindex %d, ignoring", ifindex);
                return 0;
        }

        r = FUNC14(mm, IFLA_IFNAME, &ifname);
        if (r < 0) {
                FUNC12(r, "rtnl: Received link message without ifname, ignoring: %m");
                return 0;
        }

        l = FUNC2(m->links, FUNC0(ifindex));

        switch (type) {

        case RTM_NEWLINK:
                if (!l) {
                        FUNC7("Found link %i", ifindex);

                        r = FUNC4(m, &l, ifindex, ifname);
                        if (r < 0)
                                return FUNC8(r, "Failed to create link object: %m");
                }

                r = FUNC6(l, mm);
                if (r < 0)
                        FUNC10(l, r, "Failed to process RTNL link message, ignoring: %m");

                r = FUNC5(l);
                if (r < 0 && r != -ENODATA)
                        FUNC10(l, r, "Failed to update link state, ignoring: %m");

                break;

        case RTM_DELLINK:
                if (l) {
                        FUNC9(l, "Removing link");
                        FUNC3(l);
                }

                break;
        }

        return 0;
}