
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int by_key; } ;
typedef TYPE_1__ DnsZone ;


 int hashmap_isempty (int ) ;

bool dns_zone_is_empty(DnsZone *zone) {
        if (!zone)
                return 1;

        return hashmap_isempty(zone->by_key);
}
