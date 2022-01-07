
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* domains_next; } ;
typedef TYPE_1__ DnsSearchDomain ;


 int dns_search_domain_unlink (TYPE_1__*) ;

void dns_search_domain_unlink_all(DnsSearchDomain *first) {
        DnsSearchDomain *next;

        if (!first)
                return;

        next = first->domains_next;
        dns_search_domain_unlink(first);

        dns_search_domain_unlink_all(next);
}
