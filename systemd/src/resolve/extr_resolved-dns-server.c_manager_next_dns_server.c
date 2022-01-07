
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dns_servers; scalar_t__ fallback_dns_servers; TYPE_1__* current_dns_server; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ servers_next; scalar_t__ linked; } ;
typedef TYPE_2__ Manager ;


 scalar_t__ DNS_SERVER_FALLBACK ;
 int assert (TYPE_2__*) ;
 int manager_set_dns_server (TYPE_2__*,scalar_t__) ;

void manager_next_dns_server(Manager *m) {
        assert(m);



        if (!m->current_dns_server)
                return;



        if (m->current_dns_server->linked && m->current_dns_server->servers_next) {
                manager_set_dns_server(m, m->current_dns_server->servers_next);
                return;
        }



        if (m->current_dns_server->type == DNS_SERVER_FALLBACK)
                manager_set_dns_server(m, m->fallback_dns_servers);
        else
                manager_set_dns_server(m, m->dns_servers);
}
