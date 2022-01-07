
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * current_dns_server; int dns_servers; } ;
typedef TYPE_1__ Link ;
typedef int DnsServer ;


 int assert (TYPE_1__*) ;
 int link_set_dns_server (TYPE_1__*,int ) ;

DnsServer *link_get_dns_server(Link *l) {
        assert(l);

        if (!l->current_dns_server)
                link_set_dns_server(l, l->dns_servers);

        return l->current_dns_server;
}
