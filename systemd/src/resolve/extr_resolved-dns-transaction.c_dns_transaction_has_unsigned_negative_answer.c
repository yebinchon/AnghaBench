
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int answer; int key; } ;
typedef TYPE_1__ DnsTransaction ;


 int assert (TYPE_1__*) ;
 int dns_answer_contains_nsec_or_nsec3 (int ) ;
 int dns_resource_key_name (int ) ;
 int dns_transaction_has_positive_answer (TYPE_1__*,int *) ;
 int dns_transaction_negative_trust_anchor_lookup (TYPE_1__*,int ) ;

__attribute__((used)) static int dns_transaction_has_unsigned_negative_answer(DnsTransaction *t) {
        int r;

        assert(t);




        r = dns_transaction_has_positive_answer(t, ((void*)0));
        if (r < 0)
                return r;
        if (r > 0)
                return 0;



        r = dns_transaction_negative_trust_anchor_lookup(t, dns_resource_key_name(t->key));
        if (r < 0)
                return r;
        if (r > 0)
                return 0;





        r = dns_answer_contains_nsec_or_nsec3(t->answer);
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        return 1;
}
