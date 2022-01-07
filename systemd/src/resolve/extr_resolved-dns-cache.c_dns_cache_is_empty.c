
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int by_key; } ;
typedef TYPE_1__ DnsCache ;


 int hashmap_isempty (int ) ;

bool dns_cache_is_empty(DnsCache *cache) {
        if (!cache)
                return 1;

        return hashmap_isempty(cache->by_key);
}
