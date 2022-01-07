
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* query; int clamp_ttl; int notify_query_candidates; int transactions; int notify_query_candidates_done; int scope; } ;
struct TYPE_16__ {int clamp_ttl; } ;
typedef TYPE_2__ DnsTransaction ;
typedef TYPE_2__ DnsResourceKey ;
typedef TYPE_2__ DnsQueryCandidate ;


 int assert (TYPE_2__*) ;
 TYPE_2__* dns_scope_find_transaction (int ,TYPE_2__*,int) ;
 int dns_transaction_gc (TYPE_2__*) ;
 int dns_transaction_new (TYPE_2__**,int ,TYPE_2__*) ;
 scalar_t__ set_contains (int ,TYPE_2__*) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,TYPE_2__*) ;
 int set_remove (int ,TYPE_2__*) ;

__attribute__((used)) static int dns_query_candidate_add_transaction(DnsQueryCandidate *c, DnsResourceKey *key) {
        DnsTransaction *t;
        int r;

        assert(c);
        assert(key);

        t = dns_scope_find_transaction(c->scope, key, 1);
        if (!t) {
                r = dns_transaction_new(&t, c->scope, key);
                if (r < 0)
                        return r;
        } else {
                if (set_contains(c->transactions, t))
                        return 0;
        }

        r = set_ensure_allocated(&c->transactions, ((void*)0));
        if (r < 0)
                goto gc;

        r = set_ensure_allocated(&t->notify_query_candidates, ((void*)0));
        if (r < 0)
                goto gc;

        r = set_ensure_allocated(&t->notify_query_candidates_done, ((void*)0));
        if (r < 0)
                goto gc;

        r = set_put(t->notify_query_candidates, c);
        if (r < 0)
                goto gc;

        r = set_put(c->transactions, t);
        if (r < 0) {
                (void) set_remove(t->notify_query_candidates, c);
                goto gc;
        }

        t->clamp_ttl = c->query->clamp_ttl;
        return 1;

gc:
        dns_transaction_gc(t);
        return r;
}
