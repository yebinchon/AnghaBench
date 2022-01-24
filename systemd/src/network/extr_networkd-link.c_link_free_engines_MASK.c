#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  radv; int /*<<< orphan*/  ndisc; int /*<<< orphan*/  dhcp6_client; int /*<<< orphan*/  ipv4ll; int /*<<< orphan*/  lldp; int /*<<< orphan*/  dhcp_routes; int /*<<< orphan*/  dhcp_lease; int /*<<< orphan*/  dhcp_client; int /*<<< orphan*/  dhcp_server; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(Link *link) {
        if (!link)
                return;

        link->dhcp_server = FUNC4(link->dhcp_server);
        link->dhcp_client = FUNC2(link->dhcp_client);
        link->dhcp_lease = FUNC3(link->dhcp_lease);
        link->dhcp_routes = FUNC9(link->dhcp_routes);

        link->lldp = FUNC6(link->lldp);

        FUNC0(link);

        link->ipv4ll = FUNC5(link->ipv4ll);
        link->dhcp6_client = FUNC1(link->dhcp6_client);
        link->ndisc = FUNC7(link->ndisc);
        link->radv = FUNC8(link->radv);
}