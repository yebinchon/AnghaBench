
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct swap_entries {int dummy; } ;
struct TYPE_4__ {void const* key; } ;
struct plain_hashmap_entry {void* value; TYPE_1__ b; } ;
struct TYPE_6__ {void* key; } ;
struct TYPE_5__ {struct plain_hashmap_entry p; } ;
typedef int Hashmap ;


 int ENOENT ;
 int HASHMAP_BASE (int *) ;
 unsigned int IDX_NIL ;
 int IDX_PUT ;
 int assert (int) ;
 int assert_se (int) ;
 TYPE_3__* bucket_at (int ,unsigned int) ;
 TYPE_2__* bucket_at_swap (struct swap_entries*,int ) ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 int hashmap_put_boldly (int *,unsigned int,struct swap_entries*,int) ;
 unsigned int prev_idx (int ,unsigned int) ;
 int remove_entry (int *,unsigned int) ;

int hashmap_remove_and_replace(Hashmap *h, const void *old_key, const void *new_key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned old_hash, new_hash, idx_old, idx_new;

        if (!h)
                return -ENOENT;

        old_hash = bucket_hash(h, old_key);
        idx_old = bucket_scan(h, old_hash, old_key);
        if (idx_old == IDX_NIL)
                return -ENOENT;

        old_key = bucket_at(HASHMAP_BASE(h), idx_old)->key;

        new_hash = bucket_hash(h, new_key);
        idx_new = bucket_scan(h, new_hash, new_key);
        if (idx_new != IDX_NIL)
                if (idx_old != idx_new) {
                        remove_entry(h, idx_new);

                        if (old_key != bucket_at(HASHMAP_BASE(h), idx_old)->key)
                                idx_old = prev_idx(HASHMAP_BASE(h), idx_old);
                        assert(old_key == bucket_at(HASHMAP_BASE(h), idx_old)->key);
                }

        remove_entry(h, idx_old);

        e = &bucket_at_swap(&swap, IDX_PUT)->p;
        e->b.key = new_key;
        e->value = value;
        assert_se(hashmap_put_boldly(h, new_hash, &swap, 0) == 1);

        return 0;
}
