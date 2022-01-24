#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  type; } ;
struct TYPE_14__ {TYPE_1__* unicast_scope; TYPE_3__* current_dns_server; } ;
struct TYPE_13__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_2__ Manager ;
typedef  TYPE_3__ DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 

DnsServer *FUNC8(Manager *m, DnsServer *s) {
        FUNC0(m);

        if (m->current_dns_server == s)
                return s;

        if (s)
                FUNC6("Switching to %s DNS server %s.",
                          FUNC4(s->type),
                          FUNC3(s));

        FUNC5(m->current_dns_server);
        m->current_dns_server = FUNC2(s);

        if (m->unicast_scope)
                FUNC1(&m->unicast_scope->cache);

        (void) FUNC7(m, "CurrentDNSServer");

        return s;
}