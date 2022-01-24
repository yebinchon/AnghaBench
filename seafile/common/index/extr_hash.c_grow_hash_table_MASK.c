#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hash_table_entry {unsigned int hash; void* ptr; } ;
struct hash_table {unsigned int size; scalar_t__ nr; struct hash_table_entry* array; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 struct hash_table_entry* FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hash_table_entry*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,void*,struct hash_table*) ; 

__attribute__((used)) static void FUNC4(struct hash_table *table)
{
    unsigned int i;
    unsigned int old_size = table->size, new_size;
    struct hash_table_entry *old_array = table->array, *new_array;

    new_size = FUNC0(old_size);
    new_array = FUNC1(sizeof(struct hash_table_entry), new_size);
    table->size = new_size;
    table->array = new_array;
    table->nr = 0;
    for (i = 0; i < old_size; i++) {
        unsigned int hash = old_array[i].hash;
        void *ptr = old_array[i].ptr;
        if (ptr)
            FUNC3(hash, ptr, table);
    }
    FUNC2(old_array);
}