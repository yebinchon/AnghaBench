
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_table {int array; } ;
struct TYPE_2__ {void* ptr; } ;


 TYPE_1__* lookup_hash_entry (unsigned int,struct hash_table const*) ;

void *lookup_hash(unsigned int hash, const struct hash_table *table)
{
    if (!table->array)
        return ((void*)0);
    return lookup_hash_entry(hash, table)->ptr;
}
