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
struct TYPE_3__ {size_t i_depth; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ block_fifo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2 (block_fifo_t *fifo)
{
    size_t depth;

    FUNC0 (&fifo->lock);
    depth = fifo->i_depth;
    FUNC1 (&fifo->lock);
    return depth;
}