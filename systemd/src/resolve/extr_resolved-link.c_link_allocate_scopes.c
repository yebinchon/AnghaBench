
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ llmnr_support; scalar_t__ mdns_support; TYPE_1__* unicast_scope; scalar_t__ dns_servers; scalar_t__ fallback_dns_servers; } ;
struct TYPE_9__ {int unicast_relevant; scalar_t__ llmnr_support; scalar_t__ mdns_support; void* mdns_ipv6_scope; TYPE_5__* manager; void* mdns_ipv4_scope; void* llmnr_ipv6_scope; void* llmnr_ipv4_scope; void* unicast_scope; scalar_t__ dns_servers; } ;
struct TYPE_8__ {int cache; } ;
typedef TYPE_2__ Link ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int DNS_PROTOCOL_DNS ;
 int DNS_PROTOCOL_LLMNR ;
 int DNS_PROTOCOL_MDNS ;
 scalar_t__ RESOLVE_SUPPORT_NO ;
 int assert (TYPE_2__*) ;
 int dns_cache_flush (int *) ;
 void* dns_scope_free (void*) ;
 int dns_scope_new (TYPE_5__*,void**,TYPE_2__*,int ,int ) ;
 int dns_server_reset_features_all (scalar_t__) ;
 int link_relevant (TYPE_2__*,int ,int) ;
 int log_warning_errno (int,char*) ;
 scalar_t__ socket_ipv6_is_supported () ;

void link_allocate_scopes(Link *l) {
        bool unicast_relevant;
        int r;

        assert(l);





        unicast_relevant = link_relevant(l, AF_UNSPEC, 0);
        if (unicast_relevant != l->unicast_relevant) {
                l->unicast_relevant = unicast_relevant;

                dns_server_reset_features_all(l->manager->fallback_dns_servers);
                dns_server_reset_features_all(l->manager->dns_servers);



                if (l->manager->unicast_scope)
                        dns_cache_flush(&l->manager->unicast_scope->cache);
        }




        if (unicast_relevant && l->dns_servers) {
                if (!l->unicast_scope) {
                        dns_server_reset_features_all(l->dns_servers);

                        r = dns_scope_new(l->manager, &l->unicast_scope, l, DNS_PROTOCOL_DNS, AF_UNSPEC);
                        if (r < 0)
                                log_warning_errno(r, "Failed to allocate DNS scope: %m");
                }
        } else
                l->unicast_scope = dns_scope_free(l->unicast_scope);

        if (link_relevant(l, AF_INET, 1) &&
            l->llmnr_support != RESOLVE_SUPPORT_NO &&
            l->manager->llmnr_support != RESOLVE_SUPPORT_NO) {
                if (!l->llmnr_ipv4_scope) {
                        r = dns_scope_new(l->manager, &l->llmnr_ipv4_scope, l, DNS_PROTOCOL_LLMNR, AF_INET);
                        if (r < 0)
                                log_warning_errno(r, "Failed to allocate LLMNR IPv4 scope: %m");
                }
        } else
                l->llmnr_ipv4_scope = dns_scope_free(l->llmnr_ipv4_scope);

        if (link_relevant(l, AF_INET6, 1) &&
            l->llmnr_support != RESOLVE_SUPPORT_NO &&
            l->manager->llmnr_support != RESOLVE_SUPPORT_NO &&
            socket_ipv6_is_supported()) {
                if (!l->llmnr_ipv6_scope) {
                        r = dns_scope_new(l->manager, &l->llmnr_ipv6_scope, l, DNS_PROTOCOL_LLMNR, AF_INET6);
                        if (r < 0)
                                log_warning_errno(r, "Failed to allocate LLMNR IPv6 scope: %m");
                }
        } else
                l->llmnr_ipv6_scope = dns_scope_free(l->llmnr_ipv6_scope);

        if (link_relevant(l, AF_INET, 1) &&
            l->mdns_support != RESOLVE_SUPPORT_NO &&
            l->manager->mdns_support != RESOLVE_SUPPORT_NO) {
                if (!l->mdns_ipv4_scope) {
                        r = dns_scope_new(l->manager, &l->mdns_ipv4_scope, l, DNS_PROTOCOL_MDNS, AF_INET);
                        if (r < 0)
                                log_warning_errno(r, "Failed to allocate mDNS IPv4 scope: %m");
                }
        } else
                l->mdns_ipv4_scope = dns_scope_free(l->mdns_ipv4_scope);

        if (link_relevant(l, AF_INET6, 1) &&
            l->mdns_support != RESOLVE_SUPPORT_NO &&
            l->manager->mdns_support != RESOLVE_SUPPORT_NO) {
                if (!l->mdns_ipv6_scope) {
                        r = dns_scope_new(l->manager, &l->mdns_ipv6_scope, l, DNS_PROTOCOL_MDNS, AF_INET6);
                        if (r < 0)
                                log_warning_errno(r, "Failed to allocate mDNS IPv6 scope: %m");
                }
        } else
                l->mdns_ipv6_scope = dns_scope_free(l->mdns_ipv6_scope);
}
