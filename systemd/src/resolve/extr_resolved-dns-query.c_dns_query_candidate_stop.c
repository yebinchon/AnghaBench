
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int transactions; } ;
struct TYPE_8__ {int notify_query_candidates_done; int notify_query_candidates; } ;
typedef TYPE_1__ DnsTransaction ;
typedef TYPE_2__ DnsQueryCandidate ;


 int assert (TYPE_2__*) ;
 int dns_transaction_gc (TYPE_1__*) ;
 int set_remove (int ,TYPE_2__*) ;
 TYPE_1__* set_steal_first (int ) ;

__attribute__((used)) static void dns_query_candidate_stop(DnsQueryCandidate *c) {
        DnsTransaction *t;

        assert(c);

        while ((t = set_steal_first(c->transactions))) {
                set_remove(t->notify_query_candidates, c);
                set_remove(t->notify_query_candidates_done, c);
                dns_transaction_gc(t);
        }
}
