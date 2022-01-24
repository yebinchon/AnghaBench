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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_ADDRESS ; 
 int /*<<< orphan*/  IFLA_CARRIER ; 
 int /*<<< orphan*/  IFLA_GROUP ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_LINKMODE ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IFLA_NUM_RX_QUEUES ; 
 int /*<<< orphan*/  IFLA_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  IFLA_OPERSTATE ; 
 int /*<<< orphan*/  IFLA_TXQLEN ; 
 int /*<<< orphan*/  RTM_GETLINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ether_addr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(sd_netlink *rtnl, int ifindex) {
        sd_netlink_message *m;
        sd_netlink_message *r;
        uint32_t mtu = 1500;
        const char *str_data;
        uint8_t u8_data;
        uint32_t u32_data;
        struct ether_addr eth_data;

        FUNC0(FUNC9(rtnl, &m, RTM_GETLINK, ifindex) >= 0);
        FUNC0(*m);

        /* u8 test cases  */
        FUNC0(FUNC3(m, IFLA_CARRIER, 0) >= 0);
        FUNC0(FUNC3(m, IFLA_OPERSTATE, 0) >= 0);
        FUNC0(FUNC3(m, IFLA_LINKMODE, 0) >= 0);

        /* u32 test cases */
        FUNC0(FUNC2(m, IFLA_MTU, mtu) >= 0);
        FUNC0(FUNC2(m, IFLA_GROUP, 0) >= 0);
        FUNC0(FUNC2(m, IFLA_TXQLEN, 0) >= 0);
        FUNC0(FUNC2(m, IFLA_NUM_TX_QUEUES, 0) >= 0);
        FUNC0(FUNC2(m, IFLA_NUM_RX_QUEUES, 0) >= 0);

        FUNC0(FUNC1(rtnl, m, -1, &r) == 1);

        FUNC0(FUNC5(r, IFLA_IFNAME, &str_data) == 0);

        FUNC0(FUNC7(r, IFLA_CARRIER, &u8_data) == 0);
        FUNC0(FUNC7(r, IFLA_OPERSTATE, &u8_data) == 0);
        FUNC0(FUNC7(r, IFLA_LINKMODE, &u8_data) == 0);

        FUNC0(FUNC6(r, IFLA_MTU, &u32_data) == 0);
        FUNC0(FUNC6(r, IFLA_GROUP, &u32_data) == 0);
        FUNC0(FUNC6(r, IFLA_TXQLEN, &u32_data) == 0);
        FUNC0(FUNC6(r, IFLA_NUM_TX_QUEUES, &u32_data) == 0);
        FUNC0(FUNC6(r, IFLA_NUM_RX_QUEUES, &u32_data) == 0);

        FUNC0(FUNC4(r, IFLA_ADDRESS, &eth_data) == 0);

        FUNC0((m = FUNC8(m)) == NULL);
        FUNC0((r = FUNC8(r)) == NULL);
}