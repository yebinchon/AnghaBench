
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int by_name; int by_key; } ;
struct TYPE_13__ {TYPE_1__* rr; } ;
struct TYPE_12__ {int key; } ;
typedef TYPE_2__ DnsZoneItem ;
typedef TYPE_3__ DnsZone ;


 int LIST_REMOVE (int ,TYPE_2__*,TYPE_2__*) ;
 int assert (TYPE_3__*) ;
 int assert_se (int) ;
 int by_key ;
 int by_name ;
 int dns_resource_key_name (int ) ;
 int dns_zone_item_free (TYPE_2__*) ;
 TYPE_2__* hashmap_get (int ,int ) ;
 int hashmap_remove (int ,int ) ;
 scalar_t__ hashmap_replace (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void dns_zone_item_remove_and_free(DnsZone *z, DnsZoneItem *i) {
        DnsZoneItem *first;

        assert(z);

        if (!i)
                return;

        first = hashmap_get(z->by_key, i->rr->key);
        LIST_REMOVE(by_key, first, i);
        if (first)
                assert_se(hashmap_replace(z->by_key, first->rr->key, first) >= 0);
        else
                hashmap_remove(z->by_key, i->rr->key);

        first = hashmap_get(z->by_name, dns_resource_key_name(i->rr->key));
        LIST_REMOVE(by_name, first, i);
        if (first)
                assert_se(hashmap_replace(z->by_name, dns_resource_key_name(first->rr->key), first) >= 0);
        else
                hashmap_remove(z->by_name, dns_resource_key_name(i->rr->key));

        dns_zone_item_free(i);
}
