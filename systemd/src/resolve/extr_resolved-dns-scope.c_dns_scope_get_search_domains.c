
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ protocol; TYPE_2__* manager; TYPE_1__* link; } ;
struct TYPE_7__ {int * search_domains; } ;
struct TYPE_6__ {int * search_domains; } ;
typedef int DnsSearchDomain ;
typedef TYPE_3__ DnsScope ;


 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_3__*) ;

DnsSearchDomain *dns_scope_get_search_domains(DnsScope *s) {
        assert(s);

        if (s->protocol != DNS_PROTOCOL_DNS)
                return ((void*)0);

        if (s->link)
                return s->link->search_domains;

        return s->manager->search_domains;
}
