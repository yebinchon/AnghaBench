
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int by_expiry; int by_key; } ;
struct TYPE_12__ {int prioq_idx; int key; } ;
typedef TYPE_1__ DnsCacheItem ;
typedef TYPE_2__ DnsCache ;


 int LIST_REMOVE (int ,TYPE_1__*,TYPE_1__*) ;
 int assert (TYPE_2__*) ;
 int assert_se (int) ;
 int by_key ;
 int dns_cache_item_free (TYPE_1__*) ;
 TYPE_1__* hashmap_get (int ,int ) ;
 int hashmap_remove (int ,int ) ;
 scalar_t__ hashmap_replace (int ,int ,TYPE_1__*) ;
 int prioq_remove (int ,TYPE_1__*,int *) ;

__attribute__((used)) static void dns_cache_item_unlink_and_free(DnsCache *c, DnsCacheItem *i) {
        DnsCacheItem *first;

        assert(c);

        if (!i)
                return;

        first = hashmap_get(c->by_key, i->key);
        LIST_REMOVE(by_key, first, i);

        if (first)
                assert_se(hashmap_replace(c->by_key, first->key, first) >= 0);
        else
                hashmap_remove(c->by_key, i->key);

        prioq_remove(c->by_expiry, i, &i->prioq_idx);

        dns_cache_item_free(i);
}
