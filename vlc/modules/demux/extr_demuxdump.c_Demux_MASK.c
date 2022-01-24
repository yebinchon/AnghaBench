#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_access_out_t ;
struct TYPE_8__ {int /*<<< orphan*/  s; scalar_t__ p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {int i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_BLOCKSIZE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( demux_t *p_demux )
{
    sout_access_out_t *out = (void *)p_demux->p_sys;

    block_t *block = FUNC0( DUMP_BLOCKSIZE );
    if( FUNC4(block == NULL) )
        return -1;

    int rd = FUNC5( p_demux->s, block->p_buffer, DUMP_BLOCKSIZE );
    if ( rd <= 0 )
    {
        FUNC1( block );
        return rd;
    }
    block->i_buffer = rd;

    size_t wr = FUNC3( out, block );
    if( wr != (size_t)rd )
    {
        FUNC2( p_demux, "cannot write data" );
        return -1;
    }
    return 1;
}