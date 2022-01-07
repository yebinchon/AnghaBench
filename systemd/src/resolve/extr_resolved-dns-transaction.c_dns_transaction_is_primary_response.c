
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int key; } ;
typedef TYPE_1__ DnsTransaction ;
typedef TYPE_1__ DnsResourceRecord ;


 int assert (TYPE_1__*) ;
 int dns_resource_key_match_cname_or_dname (int ,int ,int *) ;
 int dns_resource_key_match_rr (int ,TYPE_1__*,int *) ;

__attribute__((used)) static int dns_transaction_is_primary_response(DnsTransaction *t, DnsResourceRecord *rr) {
        int r;

        assert(t);
        assert(rr);





        r = dns_resource_key_match_rr(t->key, rr, ((void*)0));
        if (r != 0)
                return r;

        return dns_resource_key_match_cname_or_dname(t->key, rr->key, ((void*)0));
}
