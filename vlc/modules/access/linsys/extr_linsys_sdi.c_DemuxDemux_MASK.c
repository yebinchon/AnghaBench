#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_BUFFER_SIZE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( demux_t *p_demux )
{
    block_t *p_block = FUNC2( p_demux->s, DEMUX_BUFFER_SIZE );
    int i_ret;

    if ( p_block == NULL )
        return 0;

    i_ret = FUNC0( p_demux, p_block->p_buffer, p_block->i_buffer );
    FUNC1( p_block );

    return ( i_ret == VLC_SUCCESS );
}