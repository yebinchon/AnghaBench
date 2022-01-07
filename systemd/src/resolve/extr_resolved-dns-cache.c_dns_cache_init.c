
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int by_key; int by_expiry; } ;
typedef TYPE_1__ DnsCache ;


 int assert (TYPE_1__*) ;
 int dns_cache_item_prioq_compare_func ;
 int dns_resource_key_hash_ops ;
 int hashmap_ensure_allocated (int *,int *) ;
 int prioq_ensure_allocated (int *,int ) ;

__attribute__((used)) static int dns_cache_init(DnsCache *c) {
        int r;

        assert(c);

        r = prioq_ensure_allocated(&c->by_expiry, dns_cache_item_prioq_compare_func);
        if (r < 0)
                return r;

        r = hashmap_ensure_allocated(&c->by_key, &dns_resource_key_hash_ops);
        if (r < 0)
                return r;

        return r;
}
