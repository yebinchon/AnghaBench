
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* scope; } ;
struct TYPE_9__ {TYPE_2__* link; TYPE_1__* manager; } ;
struct TYPE_8__ {int dnssec_negative_trust_anchors; } ;
struct TYPE_7__ {int trust_anchor; } ;
typedef TYPE_4__ DnsTransaction ;


 int assert (TYPE_4__*) ;
 int dns_trust_anchor_lookup_negative (int *,char const*) ;
 int set_contains (int ,char const*) ;

__attribute__((used)) static int dns_transaction_negative_trust_anchor_lookup(DnsTransaction *t, const char *name) {
        int r;

        assert(t);





        r = dns_trust_anchor_lookup_negative(&t->scope->manager->trust_anchor, name);
        if (r != 0)
                return r;

        if (!t->scope->link)
                return 0;

        return set_contains(t->scope->link->dnssec_negative_trust_anchors, name);
}
