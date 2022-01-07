
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dnssec_mode; } ;
struct TYPE_11__ {scalar_t__ answer_dnssec_result; scalar_t__ n_picked_servers; scalar_t__ answer_rcode; int answer_errno; int server; TYPE_9__* scope; } ;
typedef TYPE_1__ DnsTransaction ;


 scalar_t__ DNSSEC_INCOMPATIBLE_SERVER ;
 int DNSSEC_UNSIGNED ;
 int DNSSEC_VALIDATED ;
 scalar_t__ DNSSEC_YES ;
 scalar_t__ DNS_RCODE_SUCCESS ;
 int DNS_TRANSACTION_DNSSEC_FAILED ;
 int DNS_TRANSACTION_ERRNO ;
 int DNS_TRANSACTION_INVALID_REPLY ;
 int DNS_TRANSACTION_RCODE_FAILURE ;
 int DNS_TRANSACTION_SUCCESS ;
 int EBADMSG ;
 int IN_SET (scalar_t__,int ,int ,int ,scalar_t__) ;
 int _DNSSEC_RESULT_INVALID ;
 int assert (TYPE_1__*) ;
 scalar_t__ dns_scope_get_n_dns_servers (TYPE_9__*) ;
 int dns_server_warn_downgrade (int ) ;
 int dns_transaction_cache_answer (TYPE_1__*) ;
 int dns_transaction_complete (TYPE_1__*,int ) ;
 int dns_transaction_dnssec_ready (TYPE_1__*) ;
 int dns_transaction_maybe_restart (TYPE_1__*) ;
 int dns_transaction_retry (TYPE_1__*,int) ;
 int dns_transaction_validate_dnssec (TYPE_1__*) ;

__attribute__((used)) static void dns_transaction_process_dnssec(DnsTransaction *t) {
        int r;

        assert(t);


        r = dns_transaction_dnssec_ready(t);
        if (r < 0)
                goto fail;
        if (r == 0)
                return;



        r = dns_transaction_maybe_restart(t);
        if (r < 0)
                goto fail;
        if (r > 0)
                return;



        r = dns_transaction_validate_dnssec(t);
        if (r == -EBADMSG) {
                dns_transaction_complete(t, DNS_TRANSACTION_INVALID_REPLY);
                return;
        }
        if (r < 0)
                goto fail;

        if (t->answer_dnssec_result == DNSSEC_INCOMPATIBLE_SERVER &&
            t->scope->dnssec_mode == DNSSEC_YES) {




                if (t->n_picked_servers < dns_scope_get_n_dns_servers(t->scope)) {

                        dns_transaction_retry(t, 1);
                        return;
                }


                dns_transaction_complete(t, DNS_TRANSACTION_DNSSEC_FAILED);
                return;
        }

        if (!IN_SET(t->answer_dnssec_result,
                    _DNSSEC_RESULT_INVALID,
                    DNSSEC_VALIDATED,
                    DNSSEC_UNSIGNED,
                    DNSSEC_INCOMPATIBLE_SERVER)) {
                dns_transaction_complete(t, DNS_TRANSACTION_DNSSEC_FAILED);
                return;
        }

        if (t->answer_dnssec_result == DNSSEC_INCOMPATIBLE_SERVER)
                dns_server_warn_downgrade(t->server);

        dns_transaction_cache_answer(t);

        if (t->answer_rcode == DNS_RCODE_SUCCESS)
                dns_transaction_complete(t, DNS_TRANSACTION_SUCCESS);
        else
                dns_transaction_complete(t, DNS_TRANSACTION_RCODE_FAILURE);

        return;

fail:
        t->answer_errno = -r;
        dns_transaction_complete(t, DNS_TRANSACTION_ERRNO);
}
