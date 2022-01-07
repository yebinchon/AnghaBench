
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_entry {unsigned int hash; void* ptr; } ;
struct hash_table {unsigned int size; scalar_t__ nr; struct hash_table_entry* array; } ;


 unsigned int alloc_nr (unsigned int) ;
 struct hash_table_entry* calloc (int,unsigned int) ;
 int free (struct hash_table_entry*) ;
 int insert_hash_entry (unsigned int,void*,struct hash_table*) ;

__attribute__((used)) static void grow_hash_table(struct hash_table *table)
{
    unsigned int i;
    unsigned int old_size = table->size, new_size;
    struct hash_table_entry *old_array = table->array, *new_array;

    new_size = alloc_nr(old_size);
    new_array = calloc(sizeof(struct hash_table_entry), new_size);
    table->size = new_size;
    table->array = new_array;
    table->nr = 0;
    for (i = 0; i < old_size; i++) {
        unsigned int hash = old_array[i].hash;
        void *ptr = old_array[i].ptr;
        if (ptr)
            insert_hash_entry(hash, ptr, table);
    }
    free(old_array);
}
