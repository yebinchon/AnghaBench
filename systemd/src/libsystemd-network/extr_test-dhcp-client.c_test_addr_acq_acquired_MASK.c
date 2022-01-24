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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  sd_event ;
typedef  int /*<<< orphan*/  sd_dhcp_lease ;
typedef  int /*<<< orphan*/  sd_dhcp_client ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_DHCP_CLIENT_EVENT_IP_ACQUIRE ; 
 int /*<<< orphan*/  SD_DHCP_CLIENT_EVENT_SELECTING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct in_addr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct in_addr const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * test_addr_acq_ack ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC9(sd_dhcp_client *client, int event,
                                   void *userdata) {
        sd_event *e = userdata;
        sd_dhcp_lease *lease;
        struct in_addr addr;
        const struct in_addr *addrs;

        FUNC1(*client);
        FUNC1(FUNC0(event, SD_DHCP_CLIENT_EVENT_IP_ACQUIRE, SD_DHCP_CLIENT_EVENT_SELECTING));

        FUNC1(FUNC4(client, &lease) >= 0);
        FUNC1(*lease);

        FUNC1(FUNC5(lease, &addr) >= 0);
        FUNC1(FUNC2(&addr.s_addr, &test_addr_acq_ack[44],
                      sizeof(addr.s_addr)) == 0);

        FUNC1(FUNC6(lease, &addr) >= 0);
        FUNC1(FUNC2(&addr.s_addr, &test_addr_acq_ack[285],
                      sizeof(addr.s_addr)) == 0);

        FUNC1(FUNC7(lease, &addrs) == 1);
        FUNC1(FUNC2(&addrs[0].s_addr, &test_addr_acq_ack[308],
                         sizeof(addrs[0].s_addr)) == 0);

        if (verbose)
                FUNC3("  DHCP address acquired\n");

        FUNC8(e, 0);

        return 0;
}