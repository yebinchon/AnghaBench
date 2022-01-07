
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dns_over_tls_mode; int manager; } ;
typedef TYPE_1__ Link ;
typedef scalar_t__ DnsOverTlsMode ;


 scalar_t__ _DNS_OVER_TLS_MODE_INVALID ;
 int assert (TYPE_1__*) ;
 scalar_t__ manager_get_dns_over_tls_mode (int ) ;

DnsOverTlsMode link_get_dns_over_tls_mode(Link *l) {
        assert(l);

        if (l->dns_over_tls_mode != _DNS_OVER_TLS_MODE_INVALID)
                return l->dns_over_tls_mode;

        return manager_get_dns_over_tls_mode(l->manager);
}
