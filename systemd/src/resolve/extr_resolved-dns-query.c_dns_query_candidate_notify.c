
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int error_code; int query; scalar_t__ search_domain; } ;
typedef scalar_t__ DnsTransactionState ;
typedef TYPE_1__ DnsQueryCandidate ;


 scalar_t__ DNS_TRANSACTION_IS_LIVE (scalar_t__) ;
 scalar_t__ DNS_TRANSACTION_SUCCESS ;
 int assert (TYPE_1__*) ;
 int dns_query_candidate_go (TYPE_1__*) ;
 int dns_query_candidate_next_search_domain (TYPE_1__*) ;
 int dns_query_candidate_setup_transactions (TYPE_1__*) ;
 scalar_t__ dns_query_candidate_state (TYPE_1__*) ;
 int dns_query_ready (int ) ;
 int log_warning_errno (int,char*) ;

void dns_query_candidate_notify(DnsQueryCandidate *c) {
        DnsTransactionState state;
        int r;

        assert(c);

        state = dns_query_candidate_state(c);

        if (DNS_TRANSACTION_IS_LIVE(state))
                return;

        if (state != DNS_TRANSACTION_SUCCESS && c->search_domain) {

                r = dns_query_candidate_next_search_domain(c);
                if (r < 0)
                        goto fail;

                if (r > 0) {


                        r = dns_query_candidate_setup_transactions(c);
                        if (r < 0)
                                goto fail;

                        if (r > 0) {


                                r = dns_query_candidate_go(c);
                                if (r < 0)
                                        goto fail;

                                return;
                        }
                }

        }

        dns_query_ready(c->query);
        return;

fail:
        log_warning_errno(r, "Failed to follow search domains: %m");
        c->error_code = r;
        dns_query_ready(c->query);
}
