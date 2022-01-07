
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct swap_entries {int dummy; } ;
struct TYPE_16__ {void const* key; } ;
struct plain_hashmap_entry {void* value; TYPE_3__ b; } ;
struct TYPE_14__ {unsigned int last_rem_idx; int rem_count; int put_count; } ;
struct TYPE_15__ {TYPE_1__ debug; } ;
struct TYPE_17__ {TYPE_2__ b; } ;
struct TYPE_13__ {struct plain_hashmap_entry p; } ;
typedef TYPE_4__ Hashmap ;


 unsigned int IDX_NIL ;
 int IDX_PUT ;
 int assert (TYPE_4__*) ;
 TYPE_11__* bucket_at_swap (struct swap_entries*,int ) ;
 unsigned int bucket_hash (TYPE_4__*,void const*) ;
 unsigned int bucket_scan (TYPE_4__*,unsigned int,void const*) ;
 int hashmap_put_boldly (TYPE_4__*,unsigned int,struct swap_entries*,int) ;
 int hashmap_set_dirty (TYPE_4__*) ;
 struct plain_hashmap_entry* plain_bucket_at (TYPE_4__*,unsigned int) ;

int hashmap_replace(Hashmap *h, const void *key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned hash, idx;

        assert(h);

        hash = bucket_hash(h, key);
        idx = bucket_scan(h, hash, key);
        if (idx != IDX_NIL) {
                e = plain_bucket_at(h, idx);
                e->b.key = key;
                e->value = value;
                hashmap_set_dirty(h);

                return 0;
        }

        e = &bucket_at_swap(&swap, IDX_PUT)->p;
        e->b.key = key;
        e->value = value;
        return hashmap_put_boldly(h, hash, &swap, 1);
}
