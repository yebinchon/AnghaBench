
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int notify_zone_items_done; int notify_zone_items; } ;
struct TYPE_8__ {int probe_transaction; } ;
typedef TYPE_1__ DnsZoneItem ;
typedef TYPE_2__ DnsTransaction ;


 TYPE_2__* TAKE_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int dns_transaction_gc (TYPE_2__*) ;
 int set_remove (int ,TYPE_1__*) ;

void dns_zone_item_probe_stop(DnsZoneItem *i) {
        DnsTransaction *t;
        assert(i);

        if (!i->probe_transaction)
                return;

        t = TAKE_PTR(i->probe_transaction);

        set_remove(t->notify_zone_items, i);
        set_remove(t->notify_zone_items_done, i);
        dns_transaction_gc(t);
}
