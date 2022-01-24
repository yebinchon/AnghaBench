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
struct TYPE_4__ {int last_internal_node; scalar_t__ descendants; int /*<<< orphan*/  vector; } ;
typedef  TYPE_1__ SubspaceStoreInternalNode ;

/* Variables and functions */
 int /*<<< orphan*/  DIMENSION_VEC_DEFAULT_SIZE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline SubspaceStoreInternalNode *
FUNC2(bool last_internal_node)
{
	SubspaceStoreInternalNode *node = FUNC0(sizeof(SubspaceStoreInternalNode));

	node->vector = FUNC1(DIMENSION_VEC_DEFAULT_SIZE);
	node->descendants = 0;
	node->last_internal_node = last_internal_node;
	return node;
}