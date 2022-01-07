
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ protocol; TYPE_1__* link; } ;
struct TYPE_6__ {scalar_t__ default_route; } ;
typedef TYPE_2__ DnsScope ;


 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_2__*) ;
 int dns_scope_has_route_only_domains (TYPE_2__*) ;

bool dns_scope_is_default_route(DnsScope *scope) {
        assert(scope);


        if (scope->protocol != DNS_PROTOCOL_DNS)
                return 0;


        if (!scope->link)
                return 1;



        if (scope->link->default_route >= 0)
                return scope->link->default_route;



        return !dns_scope_has_route_only_domains(scope);
}
