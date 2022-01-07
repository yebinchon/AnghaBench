
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ llmnr_support; scalar_t__ mdns_support; scalar_t__ dnssec_mode; scalar_t__ dns_over_tls_mode; scalar_t__ default_route; int dnssec_negative_trust_anchors; scalar_t__ search_domains; scalar_t__ dns_servers; scalar_t__ is_managed; } ;
typedef TYPE_1__ Link ;


 scalar_t__ RESOLVE_SUPPORT_NO ;
 scalar_t__ RESOLVE_SUPPORT_YES ;
 scalar_t__ _DNSSEC_MODE_INVALID ;
 scalar_t__ _DNS_OVER_TLS_MODE_INVALID ;
 int assert (TYPE_1__*) ;
 int set_isempty (int ) ;

__attribute__((used)) static bool link_needs_save(Link *l) {
        assert(l);



        if (l->is_managed)
                return 0;

        if (l->llmnr_support != RESOLVE_SUPPORT_YES ||
            l->mdns_support != RESOLVE_SUPPORT_NO ||
            l->dnssec_mode != _DNSSEC_MODE_INVALID ||
            l->dns_over_tls_mode != _DNS_OVER_TLS_MODE_INVALID)
                return 1;

        if (l->dns_servers ||
            l->search_domains)
                return 1;

        if (!set_isempty(l->dnssec_negative_trust_anchors))
                return 1;

        if (l->default_route >= 0)
                return 1;

        return 0;
}
