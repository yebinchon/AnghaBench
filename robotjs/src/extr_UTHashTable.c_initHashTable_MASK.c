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
struct TYPE_3__ {int allocedNodeCount; size_t nodeSize; int /*<<< orphan*/  nodes; scalar_t__ nodeCount; int /*<<< orphan*/ * uttable; } ;
typedef  TYPE_1__ UTHashTable ;
typedef  int /*<<< orphan*/  UTHashNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 

void FUNC2(UTHashTable *table, size_t initialCount, size_t nodeSize)
{
	FUNC0(table != NULL);
	FUNC0(nodeSize >= sizeof(UTHashNode));

	table->uttable = NULL; /* Must be set to NULL for uthash. */
	table->allocedNodeCount = (initialCount == 0) ? 1 : initialCount;
	table->nodeCount = 0;
	table->nodeSize = nodeSize;
	table->nodes = FUNC1(table->nodeSize, nodeSize * table->allocedNodeCount);
}