
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int transactions_by_key; } ;
struct TYPE_10__ {scalar_t__ answer_source; int state; } ;
typedef TYPE_1__ DnsTransaction ;
typedef TYPE_2__ DnsScope ;
typedef TYPE_2__ DnsResourceKey ;


 scalar_t__ DNS_TRANSACTION_NETWORK ;
 int DNS_TRANSACTION_RCODE_FAILURE ;
 int DNS_TRANSACTION_SUCCESS ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int assert (TYPE_2__*) ;
 TYPE_1__* hashmap_get (int ,TYPE_2__*) ;

DnsTransaction *dns_scope_find_transaction(DnsScope *scope, DnsResourceKey *key, bool cache_ok) {
        DnsTransaction *t;

        assert(scope);
        assert(key);



        t = hashmap_get(scope->transactions_by_key, key);
        if (!t)
                return ((void*)0);



        if (!cache_ok &&
            IN_SET(t->state, DNS_TRANSACTION_SUCCESS, DNS_TRANSACTION_RCODE_FAILURE) &&
            t->answer_source != DNS_TRANSACTION_NETWORK)
                return ((void*)0);

        return t;
}
