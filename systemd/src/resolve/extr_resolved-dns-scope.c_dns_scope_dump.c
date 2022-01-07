
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ family; int cache; int zone; TYPE_1__* link; int protocol; } ;
struct TYPE_5__ {char* ifname; } ;
typedef int FILE ;
typedef TYPE_2__ DnsScope ;


 scalar_t__ AF_UNSPEC ;
 char* af_to_name (scalar_t__) ;
 int assert (TYPE_2__*) ;
 int dns_cache_dump (int *,int *) ;
 int dns_cache_is_empty (int *) ;
 char* dns_protocol_to_string (int ) ;
 int dns_zone_dump (int *,int *) ;
 int dns_zone_is_empty (int *) ;
 int fputs (char*,int *) ;
 int * stdout ;

void dns_scope_dump(DnsScope *s, FILE *f) {
        assert(s);

        if (!f)
                f = stdout;

        fputs("[Scope protocol=", f);
        fputs(dns_protocol_to_string(s->protocol), f);

        if (s->link) {
                fputs(" interface=", f);
                fputs(s->link->ifname, f);
        }

        if (s->family != AF_UNSPEC) {
                fputs(" family=", f);
                fputs(af_to_name(s->family), f);
        }

        fputs("]\n", f);

        if (!dns_zone_is_empty(&s->zone)) {
                fputs("ZONE:\n", f);
                dns_zone_dump(&s->zone, f);
        }

        if (!dns_cache_is_empty(&s->cache)) {
                fputs("CACHE:\n", f);
                dns_cache_dump(&s->cache, f);
        }
}
