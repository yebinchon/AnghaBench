
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; scalar_t__ link; } ;
typedef int DnssecMode ;
typedef TYPE_1__ DnsServer ;


 int assert (TYPE_1__*) ;
 int link_get_dnssec_mode (scalar_t__) ;
 int manager_get_dnssec_mode (int ) ;

DnssecMode dns_server_get_dnssec_mode(DnsServer *s) {
        assert(s);

        if (s->link)
                return link_get_dnssec_mode(s->link);

        return manager_get_dnssec_mode(s->manager);
}
