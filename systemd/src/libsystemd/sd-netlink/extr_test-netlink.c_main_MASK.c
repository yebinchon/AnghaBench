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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;

/* Variables and functions */
 int EPERM ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 scalar_t__ RTM_GETLINK ; 
 scalar_t__ RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

int FUNC25(void) {
        sd_netlink *rtnl;
        sd_netlink_message *m;
        sd_netlink_message *r;
        const char *string_data;
        int if_loopback;
        uint16_t type;

        FUNC18();
        FUNC21();

        FUNC0(FUNC6(&rtnl) >= 0);
        FUNC0(*rtnl);

        FUNC23(rtnl);
        FUNC19(rtnl);
        FUNC13(rtnl);
        FUNC10();

        if_loopback = (int) FUNC1("lo");
        FUNC0(if_loopback > 0);

        FUNC11(if_loopback);
        FUNC24(if_loopback);
        FUNC12(if_loopback);
        FUNC22(if_loopback);
        FUNC14(if_loopback);
        FUNC16(rtnl, if_loopback);

        FUNC15(rtnl);
        FUNC20(rtnl);

        FUNC0(FUNC8(rtnl, &m, RTM_GETLINK, if_loopback) >= 0);
        FUNC0(*m);

        FUNC0(FUNC3(m, &type) >= 0);
        FUNC0(type == RTM_GETLINK);

        FUNC0(FUNC4(m, IFLA_IFNAME, &string_data) == -EPERM);

        FUNC0(FUNC2(rtnl, m, 0, &r) == 1);
        FUNC0(FUNC3(r, &type) >= 0);
        FUNC0(type == RTM_NEWLINK);

        FUNC0((r = FUNC5(r)) == NULL);

        FUNC0(FUNC2(rtnl, m, -1, &r) == -EPERM);
        FUNC0((m = FUNC5(m)) == NULL);
        FUNC0((r = FUNC5(r)) == NULL);

        FUNC17(rtnl, if_loopback);
        FUNC9(rtnl, if_loopback);

        FUNC0((m = FUNC5(m)) == NULL);
        FUNC0((r = FUNC5(r)) == NULL);
        FUNC0((rtnl = FUNC7(rtnl)) == NULL);

        return EXIT_SUCCESS;
}