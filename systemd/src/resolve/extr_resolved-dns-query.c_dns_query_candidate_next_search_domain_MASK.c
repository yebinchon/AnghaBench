#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* domains_next; scalar_t__ linked; } ;
struct TYPE_10__ {TYPE_3__* search_domain; int /*<<< orphan*/  scope; } ;
struct TYPE_9__ {struct TYPE_9__* domains_next; int /*<<< orphan*/  route_only; } ;
typedef  TYPE_1__ DnsSearchDomain ;
typedef  TYPE_2__ DnsQueryCandidate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(DnsQueryCandidate *c) {
        DnsSearchDomain *next = NULL;

        FUNC0(c);

        if (c->search_domain && c->search_domain->linked)
                next = c->search_domain->domains_next;
        else
                next = FUNC1(c->scope);

        for (;;) {
                if (!next) /* We hit the end of the list */
                        return 0;

                if (!next->route_only)
                        break;

                /* Skip over route-only domains */
                next = next->domains_next;
        }

        FUNC3(c->search_domain);
        c->search_domain = FUNC2(next);

        return 1;
}