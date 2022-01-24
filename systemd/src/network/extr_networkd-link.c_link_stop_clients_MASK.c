#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ radv; scalar_t__ ndisc; scalar_t__ dhcp6_client; scalar_t__ ipv4ll; scalar_t__ dhcp_client; TYPE_1__* network; scalar_t__ restarting; struct TYPE_9__* manager; struct TYPE_9__* event; } ;
struct TYPE_8__ {int /*<<< orphan*/  keep_configuration; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEEP_CONFIGURATION_DHCP_ON_STOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int,char*) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 

int FUNC10(Link *link, bool may_keep_dhcp) {
        int r = 0, k;

        FUNC1(link);
        FUNC1(link->manager);
        FUNC1(link->manager->event);

        FUNC2(link);

        bool keep_dhcp = may_keep_dhcp &&
                         link->network &&
                         (link->manager->restarting ||
                          FUNC0(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP_ON_STOP));

        if (link->dhcp_client && !keep_dhcp) {
                k = FUNC6(link->dhcp_client);
                if (k < 0)
                        r = FUNC4(link, k, "Could not stop DHCPv4 client: %m");
        }

        if (link->ipv4ll) {
                k = FUNC7(link->ipv4ll);
                if (k < 0)
                        r = FUNC4(link, k, "Could not stop IPv4 link-local: %m");
        }

        if (link->dhcp6_client) {
                k = FUNC5(link->dhcp6_client);
                if (k < 0)
                        r = FUNC4(link, k, "Could not stop DHCPv6 client: %m");
        }

        if (link->ndisc) {
                k = FUNC8(link->ndisc);
                if (k < 0)
                        r = FUNC4(link, k, "Could not stop IPv6 Router Discovery: %m");
        }

        if (link->radv) {
                k = FUNC9(link->radv);
                if (k < 0)
                        r = FUNC4(link, k, "Could not stop IPv6 Router Advertisement: %m");
        }

        FUNC3(link);
        return r;
}