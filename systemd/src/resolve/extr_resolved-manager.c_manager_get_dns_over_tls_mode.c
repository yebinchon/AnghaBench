
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dns_over_tls_mode; } ;
typedef TYPE_1__ Manager ;
typedef scalar_t__ DnsOverTlsMode ;


 scalar_t__ DNS_OVER_TLS_NO ;
 scalar_t__ _DNS_OVER_TLS_MODE_INVALID ;
 int assert (TYPE_1__*) ;

DnsOverTlsMode manager_get_dns_over_tls_mode(Manager *m) {
        assert(m);

        if (m->dns_over_tls_mode != _DNS_OVER_TLS_MODE_INVALID)
                return m->dns_over_tls_mode;

        return DNS_OVER_TLS_NO;
}
