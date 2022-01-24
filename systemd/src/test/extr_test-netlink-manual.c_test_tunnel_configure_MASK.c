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
struct in_addr {int s_addr; } ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_INFO_DATA ; 
 int /*<<< orphan*/  IFLA_IPTUN_LOCAL ; 
 int /*<<< orphan*/  IFLA_IPTUN_PROTO ; 
 int /*<<< orphan*/  IFLA_IPTUN_REMOTE ; 
 int /*<<< orphan*/  IFLA_LINKINFO ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(sd_netlink *rtnl) {
        int r;
        sd_netlink_message *m, *n;
        struct in_addr local, remote;

        /* skip test if module cannot be loaded */
        r = FUNC3("ipip");
        if (r < 0)
                return FUNC5(r, "failed to load module 'ipip'");

        r = FUNC3("sit");
        if (r < 0)
                return FUNC5(r, "failed to load module 'sit'");

        if (FUNC1() != 0)
                return FUNC4("not root");

        /* IPIP tunnel */
        FUNC0(FUNC14(rtnl, &m, RTM_NEWLINK, 0) >= 0);
        FUNC0(*m);

        FUNC0(FUNC7(m, IFLA_IFNAME, "ipip-tunnel") >= 0);
        FUNC0(FUNC8(m, IFLA_MTU, 1234)>= 0);

        FUNC0(FUNC11(m, IFLA_LINKINFO) >= 0);

        FUNC0(FUNC12(m, IFLA_INFO_DATA, "ipip") >= 0);

        FUNC2(AF_INET, "192.168.21.1", &local.s_addr);
        FUNC0(FUNC8(m, IFLA_IPTUN_LOCAL, local.s_addr) >= 0);

        FUNC2(AF_INET, "192.168.21.2", &remote.s_addr);
        FUNC0(FUNC8(m, IFLA_IPTUN_REMOTE, remote.s_addr) >= 0);

        FUNC0(FUNC10(m) >= 0);
        FUNC0(FUNC10(m) >= 0);

        FUNC0(FUNC6(rtnl, m, -1, 0) == 1);

        FUNC0((m = FUNC13(m)) == NULL);

        /* sit */
        FUNC0(FUNC14(rtnl, &n, RTM_NEWLINK, 0) >= 0);
        FUNC0(*n);

        FUNC0(FUNC7(n, IFLA_IFNAME, "sit-tunnel") >= 0);
        FUNC0(FUNC8(n, IFLA_MTU, 1234)>= 0);

        FUNC0(FUNC11(n, IFLA_LINKINFO) >= 0);

        FUNC0(FUNC12(n, IFLA_INFO_DATA, "sit") >= 0);

        FUNC0(FUNC9(n, IFLA_IPTUN_PROTO, IPPROTO_IPIP) >= 0);

        FUNC2(AF_INET, "192.168.21.3", &local.s_addr);
        FUNC0(FUNC8(n, IFLA_IPTUN_LOCAL, local.s_addr) >= 0);

        FUNC2(AF_INET, "192.168.21.4", &remote.s_addr);
        FUNC0(FUNC8(n, IFLA_IPTUN_REMOTE, remote.s_addr) >= 0);

        FUNC0(FUNC10(n) >= 0);
        FUNC0(FUNC10(n) >= 0);

        FUNC0(FUNC6(rtnl, n, -1, 0) == 1);

        FUNC0((n = FUNC13(n)) == NULL);

        return EXIT_SUCCESS;
}