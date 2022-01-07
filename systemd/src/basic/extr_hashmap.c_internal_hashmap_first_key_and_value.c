
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_base_entry {scalar_t__ key; } ;
typedef int HashmapBase ;


 unsigned int IDX_NIL ;
 struct hashmap_base_entry* bucket_at (int *,unsigned int) ;
 void* entry_value (int *,struct hashmap_base_entry*) ;
 unsigned int find_first_entry (int *) ;
 int remove_entry (int *,unsigned int) ;

void *internal_hashmap_first_key_and_value(HashmapBase *h, bool remove, void **ret_key) {
        struct hashmap_base_entry *e;
        void *key, *data;
        unsigned idx;

        idx = find_first_entry(h);
        if (idx == IDX_NIL) {
                if (ret_key)
                        *ret_key = ((void*)0);
                return ((void*)0);
        }

        e = bucket_at(h, idx);
        key = (void*) e->key;
        data = entry_value(h, e);

        if (remove)
                remove_entry(h, idx);

        if (ret_key)
                *ret_key = key;

        return data;
}
