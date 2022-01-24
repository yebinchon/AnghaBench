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
struct TYPE_9__ {int /*<<< orphan*/  ifname; int /*<<< orphan*/  state_file; int /*<<< orphan*/  mdns_ipv6_scope; int /*<<< orphan*/  mdns_ipv4_scope; int /*<<< orphan*/  llmnr_ipv6_scope; int /*<<< orphan*/  llmnr_ipv4_scope; int /*<<< orphan*/  unicast_scope; int /*<<< orphan*/  ifindex; TYPE_1__* manager; scalar_t__ addresses; } ;
struct TYPE_8__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 

Link *FUNC8(Link *l) {
        if (!l)
                return NULL;

        /* Send goodbye messages. */
        FUNC1(l->mdns_ipv4_scope, true);
        FUNC1(l->mdns_ipv6_scope, true);

        FUNC6(l);

        while (l->addresses)
                (void) FUNC5(l->addresses);

        if (l->manager)
                FUNC4(l->manager->links, FUNC0(l->ifindex));

        FUNC2(l->unicast_scope);
        FUNC2(l->llmnr_ipv4_scope);
        FUNC2(l->llmnr_ipv6_scope);
        FUNC2(l->mdns_ipv4_scope);
        FUNC2(l->mdns_ipv6_scope);

        FUNC3(l->state_file);
        FUNC3(l->ifname);

        return FUNC7(l);
}