
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {TYPE_2__* scope; TYPE_1__* query; } ;
struct TYPE_7__ {scalar_t__ protocol; int manager; scalar_t__ link; } ;
struct TYPE_6__ {int suppress_unroutable_family; } ;
typedef TYPE_3__ DnsQueryCandidate ;


 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_3__*) ;
 int dns_type_to_af (int ) ;
 int link_relevant (scalar_t__,int,int) ;
 int manager_routable (int ,int) ;

__attribute__((used)) static bool dns_query_candidate_is_routable(DnsQueryCandidate *c, uint16_t type) {
        int family;

        assert(c);





        if (!c->query->suppress_unroutable_family)
                return 1;

        if (c->scope->protocol != DNS_PROTOCOL_DNS)
                return 1;

        family = dns_type_to_af(type);
        if (family < 0)
                return 1;

        if (c->scope->link)
                return link_relevant(c->scope->link, family, 0);
        else
                return manager_routable(c->scope->manager, family);
}
