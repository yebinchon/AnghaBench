
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* transactions; } ;
struct TYPE_7__ {int block_gc; int state; } ;
typedef TYPE_1__ DnsTransaction ;
typedef TYPE_2__ DnsScope ;


 int DNS_TRANSACTION_ABORTED ;
 scalar_t__ DNS_TRANSACTION_IS_LIVE (int ) ;
 int assert (TYPE_2__*) ;
 int dns_transaction_complete (TYPE_1__*,int ) ;
 int dns_transaction_free (TYPE_1__*) ;

__attribute__((used)) static void dns_scope_abort_transactions(DnsScope *s) {
        assert(s);

        while (s->transactions) {
                DnsTransaction *t = s->transactions;




                t->block_gc++;
                if (DNS_TRANSACTION_IS_LIVE(t->state))
                        dns_transaction_complete(t, DNS_TRANSACTION_ABORTED);
                t->block_gc--;

                dns_transaction_free(t);
        }
}
