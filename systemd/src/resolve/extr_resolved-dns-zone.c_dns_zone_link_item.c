
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int by_name; int by_key; } ;
struct TYPE_12__ {TYPE_1__* rr; } ;
struct TYPE_11__ {int key; } ;
typedef TYPE_2__ DnsZoneItem ;
typedef TYPE_3__ DnsZone ;


 int LIST_PREPEND (int ,TYPE_2__*,TYPE_2__*) ;
 int assert_se (int) ;
 int by_key ;
 int by_name ;
 int dns_resource_key_name (int ) ;
 TYPE_2__* hashmap_get (int ,int ) ;
 int hashmap_put (int ,int ,TYPE_2__*) ;
 scalar_t__ hashmap_replace (int ,int ,TYPE_2__*) ;

__attribute__((used)) static int dns_zone_link_item(DnsZone *z, DnsZoneItem *i) {
        DnsZoneItem *first;
        int r;

        first = hashmap_get(z->by_key, i->rr->key);
        if (first) {
                LIST_PREPEND(by_key, first, i);
                assert_se(hashmap_replace(z->by_key, first->rr->key, first) >= 0);
        } else {
                r = hashmap_put(z->by_key, i->rr->key, i);
                if (r < 0)
                        return r;
        }

        first = hashmap_get(z->by_name, dns_resource_key_name(i->rr->key));
        if (first) {
                LIST_PREPEND(by_name, first, i);
                assert_se(hashmap_replace(z->by_name, dns_resource_key_name(first->rr->key), first) >= 0);
        } else {
                r = hashmap_put(z->by_name, dns_resource_key_name(i->rr->key), i);
                if (r < 0)
                        return r;
        }

        return 0;
}
