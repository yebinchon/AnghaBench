#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  trust_anchor; int /*<<< orphan*/  dnssd_services; int /*<<< orphan*/  mdns_hostname; int /*<<< orphan*/  llmnr_hostname; int /*<<< orphan*/  full_hostname; int /*<<< orphan*/  hostname_fd; int /*<<< orphan*/  hostname_event_source; int /*<<< orphan*/  mdns_host_ipv6_key; int /*<<< orphan*/  mdns_host_ipv4_key; int /*<<< orphan*/  llmnr_host_ipv6_key; int /*<<< orphan*/  llmnr_host_ipv4_key; int /*<<< orphan*/  event; int /*<<< orphan*/  sigrtmin1_event_source; int /*<<< orphan*/  sigusr2_event_source; int /*<<< orphan*/  sigusr1_event_source; int /*<<< orphan*/  bus; int /*<<< orphan*/  polkit_registry; int /*<<< orphan*/  rtnl_event_source; int /*<<< orphan*/  rtnl; int /*<<< orphan*/  network_monitor; int /*<<< orphan*/  network_event_source; int /*<<< orphan*/  dns_transactions; int /*<<< orphan*/  links; scalar_t__ dns_streams; int /*<<< orphan*/  unicast_scope; scalar_t__ dns_queries; int /*<<< orphan*/  search_domains; int /*<<< orphan*/  fallback_dns_servers; int /*<<< orphan*/  dns_servers; } ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Link ;
typedef  int /*<<< orphan*/  DnssdService ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

Manager *FUNC25(Manager *m) {
        Link *l;
        DnssdService *s;

        if (!m)
                return NULL;

        FUNC5(m->dns_servers);
        FUNC5(m->fallback_dns_servers);
        FUNC4(m->search_domains);

        while ((l = FUNC11(m->links)))
               FUNC13(l);

        while (m->dns_queries)
                FUNC1(m->dns_queries);

        FUNC3(m->unicast_scope);

        /* At this point only orphaned streams should remain. All others should have been freed already by their
         * owners */
        while (m->dns_streams)
                FUNC6(m->dns_streams);

#if ENABLE_DNS_OVER_TLS
        dnstls_manager_free(m);
#endif

        FUNC12(m->links);
        FUNC12(m->dns_transactions);

        FUNC21(m->network_event_source);
        FUNC24(m->network_monitor);

        FUNC23(m->rtnl);
        FUNC21(m->rtnl_event_source);

        FUNC16(m);
        FUNC17(m);
        FUNC14(m);

        FUNC0(m->polkit_registry);

        FUNC20(m->bus);

        FUNC21(m->sigusr1_event_source);
        FUNC21(m->sigusr2_event_source);
        FUNC21(m->sigrtmin1_event_source);

        FUNC22(m->event);

        FUNC2(m->llmnr_host_ipv4_key);
        FUNC2(m->llmnr_host_ipv6_key);
        FUNC2(m->mdns_host_ipv4_key);
        FUNC2(m->mdns_host_ipv6_key);

        FUNC21(m->hostname_event_source);
        FUNC19(m->hostname_fd);

        FUNC10(m->full_hostname);
        FUNC10(m->llmnr_hostname);
        FUNC10(m->mdns_hostname);

        while ((s = FUNC11(m->dnssd_services)))
               FUNC8(s);
        FUNC12(m->dnssd_services);

        FUNC7(&m->trust_anchor);
        FUNC15(m);

        return FUNC18(m);
}