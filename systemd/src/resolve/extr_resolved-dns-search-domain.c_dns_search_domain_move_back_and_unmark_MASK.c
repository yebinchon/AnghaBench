#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int marked; int type; TYPE_1__* manager; int /*<<< orphan*/  search_domains; struct TYPE_11__* link; int /*<<< orphan*/  domains_next; int /*<<< orphan*/  linked; } ;
struct TYPE_10__ {int /*<<< orphan*/  search_domains; } ;
typedef  TYPE_2__ DnsSearchDomain ;

/* Variables and functions */
#define  DNS_SEARCH_DOMAIN_LINK 129 
#define  DNS_SEARCH_DOMAIN_SYSTEM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  domains ; 

void FUNC5(DnsSearchDomain *d) {
        DnsSearchDomain *tail;

        FUNC3(d);

        if (!d->marked)
                return;

        d->marked = false;

        if (!d->linked || !d->domains_next)
                return;

        switch (d->type) {

        case DNS_SEARCH_DOMAIN_LINK:
                FUNC3(d->link);
                FUNC0(domains, d, tail);
                FUNC2(domains, d->link->search_domains, d);
                FUNC1(domains, d->link->search_domains, tail, d);
                break;

        case DNS_SEARCH_DOMAIN_SYSTEM:
                FUNC0(domains, d, tail);
                FUNC2(domains, d->manager->search_domains, d);
                FUNC1(domains, d->manager->search_domains, tail, d);
                break;

        default:
                FUNC4("Unknown search domain type");
        }
}