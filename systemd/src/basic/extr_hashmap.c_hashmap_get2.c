
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
struct plain_hashmap_entry {void* value; TYPE_1__ b; } ;
typedef int Hashmap ;


 unsigned int IDX_NIL ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 struct plain_hashmap_entry* plain_bucket_at (int *,unsigned int) ;

void *hashmap_get2(Hashmap *h, const void *key, void **key2) {
        struct plain_hashmap_entry *e;
        unsigned hash, idx;

        if (!h)
                return ((void*)0);

        hash = bucket_hash(h, key);
        idx = bucket_scan(h, hash, key);
        if (idx == IDX_NIL)
                return ((void*)0);

        e = plain_bucket_at(h, idx);
        if (key2)
                *key2 = (void*) e->b.key;

        return e->value;
}
