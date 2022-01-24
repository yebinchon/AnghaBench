#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; TYPE_1__* network; int /*<<< orphan*/  ifname; } ;
struct TYPE_5__ {scalar_t__ ipv6_dad_transmits; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(Link *link) {
        int r;

        /* Make this a NOP if IPv6 is not available */
        if (!FUNC1())
                return 0;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (!link->network)
                return 0;

        if (link->network->ipv6_dad_transmits < 0)
                return 0;

        r = FUNC2(AF_INET6, link->ifname, "dad_transmits", link->network->ipv6_dad_transmits);
        if (r < 0)
                FUNC0(link, r, "Cannot set IPv6 dad transmits for interface: %m");

        return 0;
}