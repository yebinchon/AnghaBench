
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; } ;
struct plain_hashmap_entry {TYPE_1__ b; void* value; } ;
typedef int Hashmap ;


 unsigned int IDX_NIL ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 struct plain_hashmap_entry* plain_bucket_at (int *,unsigned int) ;
 int remove_entry (int *,unsigned int) ;

void *hashmap_remove2(Hashmap *h, const void *key, void **rkey) {
        struct plain_hashmap_entry *e;
        unsigned hash, idx;
        void *data;

        if (!h) {
                if (rkey)
                        *rkey = ((void*)0);
                return ((void*)0);
        }

        hash = bucket_hash(h, key);
        idx = bucket_scan(h, hash, key);
        if (idx == IDX_NIL) {
                if (rkey)
                        *rkey = ((void*)0);
                return ((void*)0);
        }

        e = plain_bucket_at(h, idx);
        data = e->value;
        if (rkey)
                *rkey = (void*) e->b.key;

        remove_entry(h, idx);

        return data;
}
