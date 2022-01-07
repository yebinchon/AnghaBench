
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
 int ENOENT ;
 unsigned int IDX_NIL ;
 int IDX_PUT ;
 int assert_se (int) ;
 TYPE_2__* bucket_at_swap (struct swap_entries*,int ) ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 int hashmap_put_boldly (int *,unsigned int,struct swap_entries*,int) ;
 int remove_entry (int *,unsigned int) ;

int hashmap_remove_and_put(Hashmap *h, const void *old_key, const void *new_key, void *value) {
        struct swap_entries swap;
        struct plain_hashmap_entry *e;
        unsigned old_hash, new_hash, idx;

        if (!h)
                return -ENOENT;

        old_hash = bucket_hash(h, old_key);
        idx = bucket_scan(h, old_hash, old_key);
        if (idx == IDX_NIL)
                return -ENOENT;

        new_hash = bucket_hash(h, new_key);
        if (bucket_scan(h, new_hash, new_key) != IDX_NIL)
                return -EEXIST;

        remove_entry(h, idx);

        e = &bucket_at_swap(&swap, IDX_PUT)->p;
        e->b.key = new_key;
        e->value = value;
        assert_se(hashmap_put_boldly(h, new_hash, &swap, 0) == 1);

        return 0;
}
