#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct TYPE_15__ {scalar_t__ dhcp6_client; } ;
struct TYPE_14__ {struct TYPE_14__* dynamic_hostname; struct TYPE_14__* dynamic_timezone; int /*<<< orphan*/  bus; int /*<<< orphan*/  polkit_registry; int /*<<< orphan*/  device_monitor; int /*<<< orphan*/  event; int /*<<< orphan*/  speed_meter_event_source; int /*<<< orphan*/  resolve; int /*<<< orphan*/  genl; int /*<<< orphan*/  rtnl; void* rules_saved; void* rules_foreign; void* rules; int /*<<< orphan*/ * address_pools; void* netdevs; int /*<<< orphan*/  networks; int /*<<< orphan*/  duids_requesting_uuid; void* links; void* links_requesting_uuid; void* dirty_links; int /*<<< orphan*/  dhcp6_prefixes; struct TYPE_14__* state_file; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_2__ Link ;
typedef  int /*<<< orphan*/  AddressPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct in6_addr* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,int /*<<< orphan*/  (*) (TYPE_2__*)) ; 
 TYPE_2__* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  network_unref ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 void* FUNC21 (void*,int /*<<< orphan*/  (*) (TYPE_2__*)) ; 

void FUNC22(Manager *m) {
        struct in6_addr *a;
        AddressPool *pool;
        Link *link;

        if (!m)
                return;

        FUNC4(m->state_file);

        while ((a = FUNC5(m->dhcp6_prefixes)))
                (void) FUNC3(m, a);
        m->dhcp6_prefixes = FUNC6(m->dhcp6_prefixes);

        while ((link = FUNC8(m->links))) {
                if (link->dhcp6_client)
                        (void) FUNC2(link->dhcp6_client, link);

                (void) FUNC9(link, true);

                FUNC10(link);
        }

        m->dirty_links = FUNC21(m->dirty_links, link_unref);
        m->links_requesting_uuid = FUNC21(m->links_requesting_uuid, link_unref);
        m->links = FUNC7(m->links, link_unref);

        m->duids_requesting_uuid = FUNC20(m->duids_requesting_uuid);
        m->networks = FUNC12(m->networks, network_unref);

        m->netdevs = FUNC7(m->netdevs, netdev_unref);

        while ((pool = m->address_pools))
                FUNC0(pool);

        /* routing_policy_rule_free() access m->rules and m->rules_foreign.
         * So, it is necessary to set NULL after the sets are freed. */
        m->rules = FUNC21(m->rules, routing_policy_rule_free);
        m->rules_foreign = FUNC21(m->rules_foreign, routing_policy_rule_free);
        FUNC21(m->rules_saved, routing_policy_rule_free);

        FUNC18(m->rtnl);
        FUNC18(m->genl);
        FUNC19(m->resolve);

        FUNC16(m->speed_meter_event_source);
        FUNC17(m->event);

        FUNC15(m->device_monitor);

        FUNC1(m->polkit_registry);
        FUNC14(m->bus);

        FUNC4(m->dynamic_timezone);
        FUNC4(m->dynamic_hostname);

        FUNC4(m);
}