
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* unicast_scope; int * current_dns_server; int ifname; } ;
struct TYPE_5__ {int cache; } ;
typedef TYPE_2__ Link ;
typedef int DnsServer ;


 int assert (TYPE_2__*) ;
 int dns_cache_flush (int *) ;
 int * dns_server_ref (int *) ;
 int dns_server_string (int *) ;
 int dns_server_unref (int *) ;
 int log_debug (char*,int ,int ) ;

DnsServer* link_set_dns_server(Link *l, DnsServer *s) {
        assert(l);

        if (l->current_dns_server == s)
                return s;

        if (s)
                log_debug("Switching to DNS server %s for interface %s.", dns_server_string(s), l->ifname);

        dns_server_unref(l->current_dns_server);
        l->current_dns_server = dns_server_ref(s);

        if (l->unicast_scope)
                dns_cache_flush(&l->unicast_scope->cache);

        return s;
}
