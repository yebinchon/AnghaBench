
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int default_route; int dnssec_negative_trust_anchors; int search_domains; int dns_servers; int dns_over_tls_mode; int dnssec_mode; int mdns_support; int llmnr_support; } ;
typedef TYPE_1__ Link ;


 int RESOLVE_SUPPORT_NO ;
 int RESOLVE_SUPPORT_YES ;
 int _DNSSEC_MODE_INVALID ;
 int _DNS_OVER_TLS_MODE_INVALID ;
 int assert (TYPE_1__*) ;
 int dns_search_domain_unlink_all (int ) ;
 int dns_server_unlink_all (int ) ;
 int set_free_free (int ) ;

void link_flush_settings(Link *l) {
        assert(l);

        l->default_route = -1;
        l->llmnr_support = RESOLVE_SUPPORT_YES;
        l->mdns_support = RESOLVE_SUPPORT_NO;
        l->dnssec_mode = _DNSSEC_MODE_INVALID;
        l->dns_over_tls_mode = _DNS_OVER_TLS_MODE_INVALID;

        dns_server_unlink_all(l->dns_servers);
        dns_search_domain_unlink_all(l->search_domains);

        l->dnssec_negative_trust_anchors = set_free_free(l->dnssec_negative_trust_anchors);
}
