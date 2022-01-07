
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swap_entries {int dummy; } ;
struct hashmap_base_entry {void const* key; } ;
struct TYPE_3__ {struct hashmap_base_entry b; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
typedef int Set ;


 unsigned int IDX_NIL ;
 int IDX_PUT ;
 int assert (int *) ;
 TYPE_2__* bucket_at_swap (struct swap_entries*,int ) ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 int hashmap_put_boldly (int *,unsigned int,struct swap_entries*,int) ;

int set_put(Set *s, const void *key) {
        struct swap_entries swap;
        struct hashmap_base_entry *e;
        unsigned hash, idx;

        assert(s);

        hash = bucket_hash(s, key);
        idx = bucket_scan(s, hash, key);
        if (idx != IDX_NIL)
                return 0;

        e = &bucket_at_swap(&swap, IDX_PUT)->p.b;
        e->key = key;
        return hashmap_put_boldly(s, hash, &swap, 1);
}
