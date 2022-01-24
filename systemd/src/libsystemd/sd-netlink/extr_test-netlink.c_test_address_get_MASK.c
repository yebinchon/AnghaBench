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
struct in_addr {int dummy; } ;
struct ifa_cacheinfo {int dummy; } ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFA_ADDRESS ; 
 int /*<<< orphan*/  IFA_CACHEINFO ; 
 int /*<<< orphan*/  IFA_LABEL ; 
 int /*<<< orphan*/  IFA_LOCAL ; 
 int /*<<< orphan*/  RTM_GETADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ifa_cacheinfo*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct in_addr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(sd_netlink *rtnl, int ifindex) {
        sd_netlink_message *m;
        sd_netlink_message *r;
        struct in_addr in_data;
        struct ifa_cacheinfo cache;
        const char *label;

        FUNC0(FUNC6(rtnl, &m, RTM_GETADDR, ifindex, AF_INET) >= 0);
        FUNC0(*m);

        FUNC0(FUNC1(rtnl, m, -1, &r) == 1);

        FUNC0(FUNC3(r, IFA_LOCAL, &in_data) == 0);
        FUNC0(FUNC3(r, IFA_ADDRESS, &in_data) == 0);
        FUNC0(FUNC4(r, IFA_LABEL, &label) == 0);
        FUNC0(FUNC2(r, IFA_CACHEINFO, &cache) == 0);

        FUNC0((m = FUNC5(m)) == NULL);
        FUNC0((r = FUNC5(r)) == NULL);

}