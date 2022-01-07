
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int rr; } ;
typedef TYPE_1__ DnsCacheItem ;


 int dns_resource_key_unref (int ) ;
 int dns_resource_record_unref (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void dns_cache_item_free(DnsCacheItem *i) {
        if (!i)
                return;

        dns_resource_record_unref(i->rr);
        dns_resource_key_unref(i->key);
        free(i);
}
