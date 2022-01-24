#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ i_blocks; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_3__** pp_blocks; } ;
typedef  TYPE_1__ goom_thread_t ;
struct TYPE_9__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ MAX_BLOCKS ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static block_t *FUNC5( filter_t *p_filter, block_t *p_in_buf )
{
    goom_thread_t *p_thread = p_filter->p_sys;
    block_t *p_block;

    /* Queue sample */
    FUNC3( &p_thread->lock );
    if( p_thread->i_blocks == MAX_BLOCKS )
    {
        FUNC4( &p_thread->lock );
        return p_in_buf;
    }

    p_block = FUNC0( p_in_buf->i_buffer );
    if( !p_block )
    {
        FUNC4( &p_thread->lock );
        return p_in_buf;
    }
    FUNC1( p_block->p_buffer, p_in_buf->p_buffer, p_in_buf->i_buffer );
    p_block->i_pts = p_in_buf->i_pts;

    p_thread->pp_blocks[p_thread->i_blocks++] = p_block;

    FUNC2( &p_thread->wait );
    FUNC4( &p_thread->lock );

    return p_in_buf;
}