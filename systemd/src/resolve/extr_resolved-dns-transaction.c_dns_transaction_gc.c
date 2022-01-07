
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ block_gc; int notify_transactions_done; int notify_transactions; int notify_zone_items_done; int notify_zone_items; int notify_query_candidates_done; int notify_query_candidates; } ;
typedef TYPE_1__ DnsTransaction ;


 int assert (TYPE_1__*) ;
 int dns_transaction_free (TYPE_1__*) ;
 scalar_t__ set_isempty (int ) ;

bool dns_transaction_gc(DnsTransaction *t) {
        assert(t);

        if (t->block_gc > 0)
                return 1;

        if (set_isempty(t->notify_query_candidates) &&
            set_isempty(t->notify_query_candidates_done) &&
            set_isempty(t->notify_zone_items) &&
            set_isempty(t->notify_zone_items_done) &&
            set_isempty(t->notify_transactions) &&
            set_isempty(t->notify_transactions_done)) {
                dns_transaction_free(t);
                return 0;
        }

        return 1;
}
