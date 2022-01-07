
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int cache; } ;
struct TYPE_9__ {TYPE_2__* manager; TYPE_1__* link; } ;
struct TYPE_8__ {TYPE_4__* unicast_scope; TYPE_3__* current_dns_server; } ;
struct TYPE_7__ {TYPE_4__* unicast_scope; TYPE_3__* current_dns_server; } ;
typedef TYPE_3__ DnsServer ;
typedef TYPE_4__ DnsScope ;


 int assert (TYPE_3__*) ;
 int dns_cache_flush (int *) ;

void dns_server_flush_cache(DnsServer *s) {
        DnsServer *current;
        DnsScope *scope;

        assert(s);



        current = s->link ? s->link->current_dns_server : s->manager->current_dns_server;
        if (current != s)
                return;

        scope = s->link ? s->link->unicast_scope : s->manager->unicast_scope;
        if (!scope)
                return;

        dns_cache_flush(&scope->cache);
}
