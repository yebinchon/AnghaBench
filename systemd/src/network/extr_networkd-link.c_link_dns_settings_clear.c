
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int n_dns; int dns_default_route; int dnssec_negative_trust_anchors; int dns_over_tls_mode; int dnssec_mode; void* mdns; void* llmnr; void* route_domains; void* search_domains; int dns; } ;
typedef TYPE_1__ Link ;


 int _DNSSEC_MODE_INVALID ;
 int _DNS_OVER_TLS_MODE_INVALID ;
 void* _RESOLVE_SUPPORT_INVALID ;
 int mfree (int ) ;
 void* ordered_set_free_free (void*) ;
 int set_free_free (int ) ;

void link_dns_settings_clear(Link *link) {
        link->dns = mfree(link->dns);
        link->n_dns = (unsigned) -1;

        link->search_domains = ordered_set_free_free(link->search_domains);
        link->route_domains = ordered_set_free_free(link->route_domains);

        link->dns_default_route = -1;
        link->llmnr = _RESOLVE_SUPPORT_INVALID;
        link->mdns = _RESOLVE_SUPPORT_INVALID;
        link->dnssec_mode = _DNSSEC_MODE_INVALID;
        link->dns_over_tls_mode = _DNS_OVER_TLS_MODE_INVALID;

        link->dnssec_negative_trust_anchors = set_free_free(link->dnssec_negative_trust_anchors);
}
