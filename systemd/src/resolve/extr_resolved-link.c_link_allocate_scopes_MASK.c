#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ llmnr_support; scalar_t__ mdns_support; TYPE_1__* unicast_scope; scalar_t__ dns_servers; scalar_t__ fallback_dns_servers; } ;
struct TYPE_9__ {int unicast_relevant; scalar_t__ llmnr_support; scalar_t__ mdns_support; void* mdns_ipv6_scope; TYPE_5__* manager; void* mdns_ipv4_scope; void* llmnr_ipv6_scope; void* llmnr_ipv4_scope; void* unicast_scope; scalar_t__ dns_servers; } ;
struct TYPE_8__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  DNS_PROTOCOL_DNS ; 
 int /*<<< orphan*/  DNS_PROTOCOL_LLMNR ; 
 int /*<<< orphan*/  DNS_PROTOCOL_MDNS ; 
 scalar_t__ RESOLVE_SUPPORT_NO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (void*) ; 
 int FUNC3 (TYPE_5__*,void**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(Link *l) {
        bool unicast_relevant;
        int r;

        FUNC0(l);

        /* If a link that used to be relevant is no longer, or a link that did not use to be relevant now becomes
         * relevant, let's reinit the learnt global DNS server information, since we might talk to different servers
         * now, even if they have the same addresses as before. */

        unicast_relevant = FUNC5(l, AF_UNSPEC, false);
        if (unicast_relevant != l->unicast_relevant) {
                l->unicast_relevant = unicast_relevant;

                FUNC4(l->manager->fallback_dns_servers);
                FUNC4(l->manager->dns_servers);

                /* Also, flush the global unicast scope, to deal with split horizon setups, where talking through one
                 * interface reveals different DNS zones than through others. */
                if (l->manager->unicast_scope)
                        FUNC1(&l->manager->unicast_scope->cache);
        }

        /* And now, allocate all scopes that makes sense now if we didn't have them yet, and drop those which we don't
         * need anymore */

        if (unicast_relevant && l->dns_servers) {
                if (!l->unicast_scope) {
                        FUNC4(l->dns_servers);

                        r = FUNC3(l->manager, &l->unicast_scope, l, DNS_PROTOCOL_DNS, AF_UNSPEC);
                        if (r < 0)
                                FUNC6(r, "Failed to allocate DNS scope: %m");
                }
        } else
                l->unicast_scope = FUNC2(l->unicast_scope);

        if (FUNC5(l, AF_INET, true) &&
            l->llmnr_support != RESOLVE_SUPPORT_NO &&
            l->manager->llmnr_support != RESOLVE_SUPPORT_NO) {
                if (!l->llmnr_ipv4_scope) {
                        r = FUNC3(l->manager, &l->llmnr_ipv4_scope, l, DNS_PROTOCOL_LLMNR, AF_INET);
                        if (r < 0)
                                FUNC6(r, "Failed to allocate LLMNR IPv4 scope: %m");
                }
        } else
                l->llmnr_ipv4_scope = FUNC2(l->llmnr_ipv4_scope);

        if (FUNC5(l, AF_INET6, true) &&
            l->llmnr_support != RESOLVE_SUPPORT_NO &&
            l->manager->llmnr_support != RESOLVE_SUPPORT_NO &&
            FUNC7()) {
                if (!l->llmnr_ipv6_scope) {
                        r = FUNC3(l->manager, &l->llmnr_ipv6_scope, l, DNS_PROTOCOL_LLMNR, AF_INET6);
                        if (r < 0)
                                FUNC6(r, "Failed to allocate LLMNR IPv6 scope: %m");
                }
        } else
                l->llmnr_ipv6_scope = FUNC2(l->llmnr_ipv6_scope);

        if (FUNC5(l, AF_INET, true) &&
            l->mdns_support != RESOLVE_SUPPORT_NO &&
            l->manager->mdns_support != RESOLVE_SUPPORT_NO) {
                if (!l->mdns_ipv4_scope) {
                        r = FUNC3(l->manager, &l->mdns_ipv4_scope, l, DNS_PROTOCOL_MDNS, AF_INET);
                        if (r < 0)
                                FUNC6(r, "Failed to allocate mDNS IPv4 scope: %m");
                }
        } else
                l->mdns_ipv4_scope = FUNC2(l->mdns_ipv4_scope);

        if (FUNC5(l, AF_INET6, true) &&
            l->mdns_support != RESOLVE_SUPPORT_NO &&
            l->manager->mdns_support != RESOLVE_SUPPORT_NO) {
                if (!l->mdns_ipv6_scope) {
                        r = FUNC3(l->manager, &l->mdns_ipv6_scope, l, DNS_PROTOCOL_MDNS, AF_INET6);
                        if (r < 0)
                                FUNC6(r, "Failed to allocate mDNS IPv6 scope: %m");
                }
        } else
                l->mdns_ipv6_scope = FUNC2(l->mdns_ipv6_scope);
}