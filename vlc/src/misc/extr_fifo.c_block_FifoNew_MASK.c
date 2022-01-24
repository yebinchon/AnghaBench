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
struct TYPE_4__ {scalar_t__ i_size; scalar_t__ i_depth; int /*<<< orphan*/ * p_first; int /*<<< orphan*/ ** pp_last; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ block_fifo_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

block_fifo_t *FUNC3( void )
{
    block_fifo_t *p_fifo = FUNC0( sizeof( block_fifo_t ) );
    if( !p_fifo )
        return NULL;

    FUNC2( &p_fifo->lock );
    FUNC1( &p_fifo->wait );
    p_fifo->p_first = NULL;
    p_fifo->pp_last = &p_fifo->p_first;
    p_fifo->i_depth = p_fifo->i_size = 0;

    return p_fifo;
}