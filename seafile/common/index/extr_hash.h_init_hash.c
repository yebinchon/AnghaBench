
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int * array; scalar_t__ nr; scalar_t__ size; } ;



__attribute__((used)) static inline void init_hash(struct hash_table *table)
{
    table->size = 0;
    table->nr = 0;
    table->array = ((void*)0);
}
