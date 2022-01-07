
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; int question_idna; } ;
typedef TYPE_1__ DnsScope ;
typedef int DnsQueryCandidate ;
typedef TYPE_1__ DnsQuery ;


 int SD_RESOLVED_NO_SEARCH ;
 int assert (TYPE_1__*) ;
 int dns_query_candidate_free (int *) ;
 int dns_query_candidate_new (int **,TYPE_1__*,TYPE_1__*) ;
 int dns_query_candidate_next_search_domain (int *) ;
 int dns_query_candidate_setup_transactions (int *) ;
 int dns_question_first_name (int ) ;
 scalar_t__ dns_scope_name_needs_search_domain (TYPE_1__*,int ) ;

__attribute__((used)) static int dns_query_add_candidate(DnsQuery *q, DnsScope *s) {
        DnsQueryCandidate *c;
        int r;

        assert(q);
        assert(s);

        r = dns_query_candidate_new(&c, q, s);
        if (r < 0)
                return r;


        if ((q->flags & SD_RESOLVED_NO_SEARCH) == 0 &&
            dns_scope_name_needs_search_domain(s, dns_question_first_name(q->question_idna))) {


                r = dns_query_candidate_next_search_domain(c);
                if (r <= 0)
                        goto fail;
        }

        r = dns_query_candidate_setup_transactions(c);
        if (r < 0)
                goto fail;

        return 0;

fail:
        dns_query_candidate_free(c);
        return r;
}
