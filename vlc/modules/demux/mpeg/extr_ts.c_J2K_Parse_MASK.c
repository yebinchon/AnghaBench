#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_5__ {int i_buffer; int /*<<< orphan*/ * p_buffer; int /*<<< orphan*/  i_length; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static block_t *FUNC5( demux_t *p_demux, block_t *p_block, bool b_interlaced )
{
    const uint8_t *p_buf = p_block->p_buffer;

    if( p_block->i_buffer < ((b_interlaced) ? 48 : 38) )
        goto invalid;

    if( FUNC2( p_buf, "elsmfrat", 8 ) )
        goto invalid;

    uint16_t i_den = FUNC0( &p_buf[8] );
    uint16_t i_num = FUNC0( &p_buf[10] );
    if( i_den == 0 )
        goto invalid;
    p_block->i_length = FUNC4( i_den, i_num );

    p_block->p_buffer += (b_interlaced) ? 48 : 38;
    p_block->i_buffer -= (b_interlaced) ? 48 : 38;

    return p_block;

invalid:
    FUNC3( p_demux, "invalid J2K header, dropping codestream" );
    FUNC1( p_block );
    return NULL;
}