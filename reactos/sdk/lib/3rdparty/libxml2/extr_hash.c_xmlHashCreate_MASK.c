#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlHashTablePtr ;
typedef  int /*<<< orphan*/  xmlHashTable ;
typedef  int /*<<< orphan*/  xmlHashEntry ;
struct TYPE_4__ {int size; int /*<<< orphan*/  random_seed; void* table; scalar_t__ nbElems; int /*<<< orphan*/ * dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int) ; 

xmlHashTablePtr
FUNC4(int size) {
    xmlHashTablePtr table;

    if (size <= 0)
        size = 256;

    table = FUNC3(sizeof(xmlHashTable));
    if (table) {
        table->dict = NULL;
        table->size = size;
	table->nbElems = 0;
        table->table = FUNC3(size * sizeof(xmlHashEntry));
        if (table->table) {
	    FUNC1(table->table, 0, size * sizeof(xmlHashEntry));
#ifdef HASH_RANDOMIZATION
            table->random_seed = __xmlRandom();
#endif
	    return(table);
        }
        FUNC2(table);
    }
    return(NULL);
}