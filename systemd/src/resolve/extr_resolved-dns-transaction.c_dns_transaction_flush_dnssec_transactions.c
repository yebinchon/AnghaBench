
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int notify_transactions_done; int notify_transactions; int dnssec_transactions; } ;
typedef TYPE_1__ DnsTransaction ;


 int assert (TYPE_1__*) ;
 int dns_transaction_gc (TYPE_1__*) ;
 int set_remove (int ,TYPE_1__*) ;
 TYPE_1__* set_steal_first (int ) ;

__attribute__((used)) static void dns_transaction_flush_dnssec_transactions(DnsTransaction *t) {
        DnsTransaction *z;

        assert(t);

        while ((z = set_steal_first(t->dnssec_transactions))) {
                set_remove(z->notify_transactions, t);
                set_remove(z->notify_transactions_done, t);
                dns_transaction_gc(z);
        }
}
