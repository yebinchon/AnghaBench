
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {unsigned int nr; int size; } ;


 int grow_hash_table (struct hash_table*) ;
 void** insert_hash_entry (unsigned int,void*,struct hash_table*) ;

void **insert_hash(unsigned int hash, void *ptr, struct hash_table *table)
{
    unsigned int nr = table->nr;
    if (nr >= table->size/2)
        grow_hash_table(table);
    return insert_hash_entry(hash, ptr, table);
}
