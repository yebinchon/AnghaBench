
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dns_over_tls_mode; } ;
typedef TYPE_1__ Link ;
typedef scalar_t__ DnsOverTlsMode ;


 scalar_t__ DNS_OVER_TLS_NO ;
 int assert (TYPE_1__*) ;
 int log_warning (char*) ;

void link_set_dns_over_tls_mode(Link *l, DnsOverTlsMode mode) {

        assert(l);


        if (mode != DNS_OVER_TLS_NO)
                log_warning("DNS-over-TLS option for the link cannot be enabled or set to opportunistic when systemd-resolved is built without DNS-over-TLS support. Turning off DNS-over-TLS support.");
        return;


        l->dns_over_tls_mode = mode;
}
