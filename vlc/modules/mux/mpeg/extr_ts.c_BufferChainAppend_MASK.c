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
struct TYPE_5__ {TYPE_2__** pp_last; int /*<<< orphan*/  i_depth; } ;
typedef  TYPE_1__ sout_buffer_chain_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */

__attribute__((used)) static inline void FUNC0( sout_buffer_chain_t *c, block_t *b )
{
    *c->pp_last = b;
    c->i_depth++;

    while( b->p_next )
    {
        b = b->p_next;
        c->i_depth++;
    }
    c->pp_last = &b->p_next;
}