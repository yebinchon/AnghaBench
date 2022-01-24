#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* list_prev; struct TYPE_7__* list_next; } ;
struct TYPE_6__ {scalar_t__ list_size; scalar_t__ list_offset; TYPE_2__ list_head; } ;
typedef  TYPE_1__ list_t ;
typedef  TYPE_2__ list_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

void
FUNC2(list_t *dst, list_t *src)
{
	list_node_t *dstnode = &dst->list_head;
	list_node_t *srcnode = &src->list_head;

	FUNC0(dst->list_size == src->list_size);
	FUNC0(dst->list_offset == src->list_offset);

	if (FUNC1(src))
		return;

	dstnode->list_prev->list_next = srcnode->list_next;
	srcnode->list_next->list_prev = dstnode->list_prev;
	dstnode->list_prev = srcnode->list_prev;
	srcnode->list_prev->list_next = dstnode;

	/* empty src list */
	srcnode->list_next = srcnode->list_prev = srcnode;
}