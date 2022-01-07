
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ answer_rcode; } ;
typedef TYPE_1__ DnsTransaction ;


 scalar_t__ DNS_RCODE_NXDOMAIN ;
 scalar_t__ DNS_RCODE_SUCCESS ;
 int assert (TYPE_1__*) ;
 int dns_transaction_has_positive_answer (TYPE_1__*,int *) ;

__attribute__((used)) static int dns_transaction_fix_rcode(DnsTransaction *t) {
        int r;

        assert(t);
        if (t->answer_rcode != DNS_RCODE_NXDOMAIN)
                return 0;

        r = dns_transaction_has_positive_answer(t, ((void*)0));
        if (r <= 0)
                return r;

        t->answer_rcode = DNS_RCODE_SUCCESS;
        return 0;
}
