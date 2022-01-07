
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_entry {unsigned int hash; scalar_t__ ptr; } ;
struct hash_table {unsigned int size; struct hash_table_entry* array; } ;



__attribute__((used)) static struct hash_table_entry *lookup_hash_entry(unsigned int hash, const struct hash_table *table)
{
    unsigned int size = table->size, nr = hash % size;
    struct hash_table_entry *array = table->array;

    while (array[nr].ptr) {
        if (array[nr].hash == hash)
            break;
        nr++;
        if (nr >= size)
            nr = 0;
    }
    return array + nr;
}
