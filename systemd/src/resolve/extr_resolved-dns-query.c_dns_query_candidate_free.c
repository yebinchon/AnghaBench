
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* scope; TYPE_1__* query; int search_domain; int transactions; } ;
struct TYPE_11__ {int query_candidates; } ;
struct TYPE_10__ {int candidates; } ;
typedef TYPE_3__ DnsQueryCandidate ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int candidates_by_query ;
 int candidates_by_scope ;
 int dns_query_candidate_stop (TYPE_3__*) ;
 int dns_search_domain_unref (int ) ;
 TYPE_3__* mfree (TYPE_3__*) ;
 int set_free (int ) ;

DnsQueryCandidate* dns_query_candidate_free(DnsQueryCandidate *c) {

        if (!c)
                return ((void*)0);

        dns_query_candidate_stop(c);

        set_free(c->transactions);
        dns_search_domain_unref(c->search_domain);

        if (c->query)
                LIST_REMOVE(candidates_by_query, c->query->candidates, c);

        if (c->scope)
                LIST_REMOVE(candidates_by_scope, c->scope->query_candidates, c);

        return mfree(c);
}
