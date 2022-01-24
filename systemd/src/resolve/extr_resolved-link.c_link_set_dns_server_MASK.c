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
struct TYPE_6__ {TYPE_1__* unicast_scope; int /*<<< orphan*/ * current_dns_server; int /*<<< orphan*/  ifname; } ;
struct TYPE_5__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_2__ Link ;
typedef  int /*<<< orphan*/  DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DnsServer* FUNC6(Link *l, DnsServer *s) {
        FUNC0(l);

        if (l->current_dns_server == s)
                return s;

        if (s)
                FUNC5("Switching to DNS server %s for interface %s.", FUNC3(s), l->ifname);

        FUNC4(l->current_dns_server);
        l->current_dns_server = FUNC2(s);

        if (l->unicast_scope)
                FUNC1(&l->unicast_scope->cache);

        return s;
}