
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swap_entries {int dummy; } ;
struct TYPE_3__ {void const* key; } ;
struct plain_hashmap_entry {void* value; TYPE_1__ b; } ;
struct TYPE_4__ {struct plain_hashmap_entry p; } ;
typedef int Hashmap ;


 int EEXIST ;
 unsigned int IDX_NIL ;
 int IDX_PUT ;
 int assert (int *) ;
 TYPE_2__* bucket_at_swap (struct swap_entries*,int ) ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 int hashmap_put_boldly (int *,unsigned int,struct swap_entries*,int) ;
 struct plain_hashmap_entry* plain_bucket_at (int *,unsigned int) ;

int hashmap_put(Hashmap *h, const void *key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned hash, idx;

        assert(h);

        hash = bucket_hash(h, key);
        idx = bucket_scan(h, hash, key);
        if (idx != IDX_NIL) {
                e = plain_bucket_at(h, idx);
                if (e->value == value)
                        return 0;
                return -EEXIST;
        }

        e = &bucket_at_swap(&swap, IDX_PUT)->p;
        e->b.key = key;
        e->value = value;
        return hashmap_put_boldly(h, hash, &swap, 1);
}
