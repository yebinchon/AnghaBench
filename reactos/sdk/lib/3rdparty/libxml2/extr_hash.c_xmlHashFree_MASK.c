#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlHashTablePtr ;
typedef  TYPE_1__* xmlHashEntryPtr ;
typedef  int /*<<< orphan*/  (* xmlHashDeallocator ) (int /*<<< orphan*/ *,TYPE_1__*) ;
struct TYPE_7__ {int nbElems; int size; scalar_t__ valid; int /*<<< orphan*/ * dict; struct TYPE_7__* table; int /*<<< orphan*/ * payload; struct TYPE_7__* name3; struct TYPE_7__* name2; struct TYPE_7__* name; struct TYPE_7__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(xmlHashTablePtr table, xmlHashDeallocator f) {
    int i;
    xmlHashEntryPtr iter;
    xmlHashEntryPtr next;
    int inside_table = 0;
    int nbElems;

    if (table == NULL)
	return;
    if (table->table) {
	nbElems = table->nbElems;
	for(i = 0; (i < table->size) && (nbElems > 0); i++) {
	    iter = &(table->table[i]);
	    if (iter->valid == 0)
		continue;
	    inside_table = 1;
	    while (iter) {
		next = iter->next;
		if ((f != NULL) && (iter->payload != NULL))
		    f(iter->payload, iter->name);
		if (table->dict == NULL) {
		    if (iter->name)
			FUNC1(iter->name);
		    if (iter->name2)
			FUNC1(iter->name2);
		    if (iter->name3)
			FUNC1(iter->name3);
		}
		iter->payload = NULL;
		if (!inside_table)
		    FUNC1(iter);
		nbElems--;
		inside_table = 0;
		iter = next;
	    }
	}
	FUNC1(table->table);
    }
    if (table->dict)
        FUNC0(table->dict);
    FUNC1(table);
}