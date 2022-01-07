
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_1__ DnsTransaction ;


 scalar_t__ DNS_TRANSACTION_VALIDATING ;
 int assert (TYPE_1__*) ;
 int dns_transaction_process_dnssec (TYPE_1__*) ;

void dns_transaction_notify(DnsTransaction *t, DnsTransaction *source) {
        assert(t);
        assert(source);





        if (t->state == DNS_TRANSACTION_VALIDATING)
                dns_transaction_process_dnssec(t);
}
