#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  sd_dhcp_lease ;
struct TYPE_11__ {int /*<<< orphan*/  dhcp_black_listed_ip; struct TYPE_11__* network; } ;
typedef  TYPE_1__ sd_dhcp_client ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in_addr) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int,char*) ; 
 int FUNC6 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct in_addr*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(Link *link, sd_dhcp_client *client) {
        sd_dhcp_lease *lease;
        struct in_addr addr;
        int r;

        FUNC4(link);
        FUNC4(link->network);
        FUNC4(client);

        r = FUNC8(client, &lease);
        if (r < 0)
                return FUNC6(link, r, "Failed to get DHCP lease: %m");

        r = FUNC9(lease, &addr);
        if (r < 0)
                return FUNC5(link, r, "Failed to get DHCP server ip address: %m");

        if (FUNC10(link->network->dhcp_black_listed_ip, FUNC3(addr.s_addr))) {
                FUNC7(LOG_DEBUG,
                           FUNC1(link),
                           FUNC2(link, "DHCPv4 ip '%u.%u.%u.%u' found in black listed ip addresses, ignoring offer",
                                            FUNC0(addr)));
                return true;
        }

        return false;
}