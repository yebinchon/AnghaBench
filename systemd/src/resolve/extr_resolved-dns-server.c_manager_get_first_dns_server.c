
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fallback_dns_servers; int * dns_servers; } ;
typedef TYPE_1__ Manager ;
typedef int DnsServerType ;
typedef int DnsServer ;




 int assert (TYPE_1__*) ;

DnsServer *manager_get_first_dns_server(Manager *m, DnsServerType t) {
        assert(m);

        switch (t) {

        case 128:
                return m->dns_servers;

        case 129:
                return m->fallback_dns_servers;

        default:
                return ((void*)0);
        }
}
