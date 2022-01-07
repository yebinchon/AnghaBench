
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_entry {void* ptr; unsigned int hash; } ;
struct hash_table {int nr; } ;


 struct hash_table_entry* lookup_hash_entry (unsigned int,struct hash_table*) ;

__attribute__((used)) static void **insert_hash_entry(unsigned int hash, void *ptr, struct hash_table *table)
{
    struct hash_table_entry *entry = lookup_hash_entry(hash, table);

    if (!entry->ptr) {
        entry->ptr = ptr;
        entry->hash = hash;
        table->nr++;
        return ((void*)0);
    }
    return &entry->ptr;
}
