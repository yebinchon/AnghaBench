
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int marked; struct TYPE_3__* servers_next; } ;
typedef TYPE_1__ DnsServer ;



void dns_server_mark_all(DnsServer *first) {
        if (!first)
                return;

        first->marked = 1;
        dns_server_mark_all(first->servers_next);
}
