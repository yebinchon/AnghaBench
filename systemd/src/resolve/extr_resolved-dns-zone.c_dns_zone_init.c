
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int by_name; int by_key; } ;
typedef TYPE_1__ DnsZone ;


 int assert (TYPE_1__*) ;
 int dns_name_hash_ops ;
 int dns_resource_key_hash_ops ;
 int hashmap_ensure_allocated (int *,int *) ;

__attribute__((used)) static int dns_zone_init(DnsZone *z) {
        int r;

        assert(z);

        r = hashmap_ensure_allocated(&z->by_key, &dns_resource_key_hash_ops);
        if (r < 0)
                return r;

        r = hashmap_ensure_allocated(&z->by_name, &dns_name_hash_ops);
        if (r < 0)
                return r;

        return 0;
}
