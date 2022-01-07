
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int type; } ;
struct TYPE_14__ {TYPE_1__* unicast_scope; TYPE_3__* current_dns_server; } ;
struct TYPE_13__ {int cache; } ;
typedef TYPE_2__ Manager ;
typedef TYPE_3__ DnsServer ;


 int assert (TYPE_2__*) ;
 int dns_cache_flush (int *) ;
 TYPE_3__* dns_server_ref (TYPE_3__*) ;
 int dns_server_string (TYPE_3__*) ;
 int dns_server_type_to_string (int ) ;
 int dns_server_unref (TYPE_3__*) ;
 int log_debug (char*,int ,int ) ;
 int manager_send_changed (TYPE_2__*,char*) ;

DnsServer *manager_set_dns_server(Manager *m, DnsServer *s) {
        assert(m);

        if (m->current_dns_server == s)
                return s;

        if (s)
                log_debug("Switching to %s DNS server %s.",
                          dns_server_type_to_string(s->type),
                          dns_server_string(s));

        dns_server_unref(m->current_dns_server);
        m->current_dns_server = dns_server_ref(s);

        if (m->unicast_scope)
                dns_cache_flush(&m->unicast_scope->cache);

        (void) manager_send_changed(m, "CurrentDNSServer");

        return s;
}
