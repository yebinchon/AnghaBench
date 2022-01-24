#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * nodes; int /*<<< orphan*/ * uttable; } ;
typedef  TYPE_1__ UTHashTable ;
typedef  int /*<<< orphan*/  UTHashNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(UTHashTable *table)
{
	UTHashNode *uttable = table->uttable;
	UTHashNode *node;

	/* Let uthash do its magic. */
	while (uttable != NULL) {
		node = uttable; /* Grab pointer to first item. */
		FUNC0(uttable, node); /* Delete it (table advances to next). */
	}

	/* Only giant malloc'd block containing each node must be freed. */
	if (table->nodes != NULL) FUNC1(table->nodes);
	table->uttable = table->nodes = NULL;
}