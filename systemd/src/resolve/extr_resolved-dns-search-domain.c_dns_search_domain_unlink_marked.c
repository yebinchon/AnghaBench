
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ marked; struct TYPE_4__* domains_next; } ;
typedef TYPE_1__ DnsSearchDomain ;


 int dns_search_domain_unlink (TYPE_1__*) ;

void dns_search_domain_unlink_marked(DnsSearchDomain *first) {
        DnsSearchDomain *next;

        if (!first)
                return;

        next = first->domains_next;

        if (first->marked)
                dns_search_domain_unlink(first);

        dns_search_domain_unlink_marked(next);
}
