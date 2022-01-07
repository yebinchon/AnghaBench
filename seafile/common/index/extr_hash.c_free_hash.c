
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {scalar_t__ nr; scalar_t__ size; int * array; } ;


 int free (int *) ;

void free_hash(struct hash_table *table)
{
    free(table->array);
    table->array = ((void*)0);
    table->size = 0;
    table->nr = 0;
}
