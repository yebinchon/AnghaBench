
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rr; } ;
typedef TYPE_1__ DnsZoneItem ;


 int dns_resource_record_unref (int ) ;
 int dns_zone_item_probe_stop (TYPE_1__*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void dns_zone_item_free(DnsZoneItem *i) {
        if (!i)
                return;

        dns_zone_item_probe_stop(i);
        dns_resource_record_unref(i->rr);

        free(i);
}
