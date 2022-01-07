
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ marked; struct TYPE_4__* servers_next; } ;
typedef TYPE_1__ DnsServer ;


 int dns_server_unlink (TYPE_1__*) ;

void dns_server_unlink_marked(DnsServer *first) {
        DnsServer *next;

        if (!first)
                return;

        next = first->servers_next;

        if (first->marked)
                dns_server_unlink(first);

        dns_server_unlink_marked(next);
}
