#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ family; TYPE_2__* manager; int /*<<< orphan*/  zone; int /*<<< orphan*/  cache; int /*<<< orphan*/  announce_event_source; int /*<<< orphan*/  conflict_event_source; int /*<<< orphan*/  conflict_queue; int /*<<< orphan*/  transactions_by_key; scalar_t__ query_candidates; int /*<<< orphan*/  protocol; TYPE_1__* link; } ;
struct TYPE_13__ {int /*<<< orphan*/  dns_scopes; } ;
struct TYPE_12__ {char* ifname; } ;
typedef  TYPE_3__ DnsScope ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  dns_resource_record_unref ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scopes ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

DnsScope* FUNC14(DnsScope *s) {
        if (!s)
                return NULL;

        FUNC10("Removing scope on link %s, protocol %s, family %s", s->link ? s->link->ifname : "*", FUNC3(s->protocol), s->family == AF_UNSPEC ? "*" : FUNC1(s->family));

        FUNC6(s, false);
        FUNC7(s, false);
        FUNC5(s);

        while (s->query_candidates)
                FUNC4(s->query_candidates);

        FUNC9(s->transactions_by_key);

        FUNC12(s->conflict_queue, dns_resource_record_unref);
        FUNC13(s->conflict_event_source);

        FUNC13(s->announce_event_source);

        FUNC2(&s->cache);
        FUNC8(&s->zone);

        FUNC0(scopes, s->manager->dns_scopes, s);
        return FUNC11(s);
}