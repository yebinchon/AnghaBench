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
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_first; } ;
typedef  TYPE_1__ block_fifo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

block_t *FUNC3( block_fifo_t *p_fifo )
{
    block_t *b;

    FUNC1( &p_fifo->lock );
    FUNC0(p_fifo->p_first != NULL);
    b = p_fifo->p_first;
    FUNC2( &p_fifo->lock );

    return b;
}