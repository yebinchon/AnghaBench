
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int by_key; } ;
typedef TYPE_1__ DnsCache ;


 int hashmap_size (int ) ;

unsigned dns_cache_size(DnsCache *cache) {
        if (!cache)
                return 0;

        return hashmap_size(cache->by_key);
}
