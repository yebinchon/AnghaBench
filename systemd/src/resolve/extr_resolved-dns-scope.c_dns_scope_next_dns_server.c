
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; int manager; scalar_t__ link; } ;
typedef TYPE_1__ DnsScope ;


 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_1__*) ;
 int link_next_dns_server (scalar_t__) ;
 int manager_next_dns_server (int ) ;

void dns_scope_next_dns_server(DnsScope *s) {
        assert(s);

        if (s->protocol != DNS_PROTOCOL_DNS)
                return;

        if (s->link)
                link_next_dns_server(s->link);
        else
                manager_next_dns_server(s->manager);
}
