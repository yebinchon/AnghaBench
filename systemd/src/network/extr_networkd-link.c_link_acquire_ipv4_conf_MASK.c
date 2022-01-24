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
struct TYPE_10__ {struct TYPE_10__* dhcp_client; struct TYPE_10__* ipv4ll; struct TYPE_10__* event; struct TYPE_10__* manager; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_FAMILY_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*,int,char*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(Link *link) {
        int r;

        FUNC0(link);
        FUNC0(link->manager);
        FUNC0(link->manager->event);

        if (FUNC2(link, ADDRESS_FAMILY_IPV4)) {
                FUNC0(link->ipv4ll);

                FUNC3(link, "Acquiring IPv4 link-local address");

                r = FUNC6(link->ipv4ll);
                if (r < 0)
                        return FUNC4(link, r, "Could not acquire IPv4 link-local address: %m");
        }

        if (FUNC1(link)) {
                FUNC0(link->dhcp_client);

                FUNC3(link, "Acquiring DHCPv4 lease");

                r = FUNC5(link->dhcp_client);
                if (r < 0)
                        return FUNC4(link, r, "Could not acquire DHCPv4 lease: %m");
        }

        return 0;
}