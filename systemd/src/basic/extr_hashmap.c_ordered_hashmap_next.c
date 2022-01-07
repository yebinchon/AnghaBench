
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* value; } ;
struct ordered_hashmap_entry {unsigned int iterate_next; TYPE_1__ p; } ;
typedef int OrderedHashmap ;


 unsigned int IDX_NIL ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 struct ordered_hashmap_entry* ordered_bucket_at (int *,unsigned int) ;

void *ordered_hashmap_next(OrderedHashmap *h, const void *key) {
        struct ordered_hashmap_entry *e;
        unsigned hash, idx;

        if (!h)
                return ((void*)0);

        hash = bucket_hash(h, key);
        idx = bucket_scan(h, hash, key);
        if (idx == IDX_NIL)
                return ((void*)0);

        e = ordered_bucket_at(h, idx);
        if (e->iterate_next == IDX_NIL)
                return ((void*)0);
        return ordered_bucket_at(h, e->iterate_next)->p.value;
}
