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
struct hash_table {unsigned int nr; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hash_table*) ; 
 void** FUNC1 (unsigned int,void*,struct hash_table*) ; 

void **FUNC2(unsigned int hash, void *ptr, struct hash_table *table)
{
    unsigned int nr = table->nr;
    if (nr >= table->size/2)
        FUNC0(table);
    return FUNC1(hash, ptr, table);
}