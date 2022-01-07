
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_base_entry {int dummy; } ;
typedef int HashmapBase ;


 unsigned int IDX_NIL ;
 struct hashmap_base_entry* bucket_at (int *,unsigned int) ;
 unsigned int bucket_hash (int *,void const*) ;
 unsigned int bucket_scan (int *,unsigned int,void const*) ;
 void* entry_value (int *,struct hashmap_base_entry*) ;
 int remove_entry (int *,unsigned int) ;

void *internal_hashmap_remove(HashmapBase *h, const void *key) {
        struct hashmap_base_entry *e;
        unsigned hash, idx;
        void *data;

        if (!h)
                return ((void*)0);

        hash = bucket_hash(h, key);
        idx = bucket_scan(h, hash, key);
        if (idx == IDX_NIL)
                return ((void*)0);

        e = bucket_at(h, idx);
        data = entry_value(h, e);
        remove_entry(h, idx);

        return data;
}
