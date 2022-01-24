#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sd_dhcp_lease ;
struct TYPE_10__ {int dhcp4_configured; int /*<<< orphan*/  dhcp_lease; int /*<<< orphan*/  keep_configuration; struct TYPE_10__* network; } ;
typedef  TYPE_1__ sd_dhcp_client ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_INFO_INFINITY_LIFE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEEP_CONFIGURATION_DHCP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,struct in_addr*,struct in_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(sd_dhcp_client *client, Link *link) {
        sd_dhcp_lease *lease;
        struct in_addr address;
        struct in_addr netmask;
        uint32_t lifetime = CACHE_INFO_INFINITY_LIFE_TIME;
        int r;

        FUNC1(link);
        FUNC1(client);
        FUNC1(link->network);

        r = FUNC5(client, &lease);
        if (r < 0)
                return FUNC4(link, r, "DHCP error: no lease: %m");

        FUNC10(link->dhcp_lease);
        link->dhcp4_configured = false;
        link->dhcp_lease = FUNC9(lease);
        FUNC3(link);

        r = FUNC6(lease, &address);
        if (r < 0)
                return FUNC4(link, r, "DHCP error: no address: %m");

        r = FUNC8(lease, &netmask);
        if (r < 0)
                return FUNC4(link, r, "DHCP error: no netmask: %m");

        if (!FUNC0(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                r = FUNC7(link->dhcp_lease, &lifetime);
                if (r < 0)
                        return FUNC4(link, r, "DHCP error: no lifetime: %m");
        }

        r = FUNC2(link, &address, &netmask, lifetime);
        if (r < 0)
                return FUNC4(link, r, "Could not update IP address: %m");

        return 0;
}