#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ i_depth; TYPE_2__* p_first; TYPE_2__** pp_last; } ;
typedef  TYPE_1__ fifo_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef  TYPE_2__ fifo_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline fifo_item_t *FUNC1(fifo_t *fifo)
{
    fifo_item_t *block = fifo->p_first;

    if (block == NULL)
        return NULL; /* Nothing to do */

    fifo->p_first = block->p_next;
    if (block->p_next == NULL)
        fifo->pp_last = &fifo->p_first;
    block->p_next = NULL;

    FUNC0(fifo->i_depth > 0);
    fifo->i_depth--;

    return block;
}