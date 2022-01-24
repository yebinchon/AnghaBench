#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int b_start; scalar_t__ i_pts; int /*<<< orphan*/  p_es; TYPE_4__* p_current_block; int /*<<< orphan*/  stream_info; scalar_t__ b_stream_info; int /*<<< orphan*/  p_packetizer; scalar_t__ i_next_block_flags; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ i_dts; struct TYPE_11__* p_next; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_12__ {scalar_t__ i_dts; scalar_t__ i_pts; scalar_t__ i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAC_PACKET_SIZE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block_out;

    bool b_eof = false;
    if( p_sys->p_current_block == NULL )
    {
        p_sys->p_current_block = FUNC5( p_demux->s, FLAC_PACKET_SIZE );
        b_eof = (p_sys->p_current_block == NULL);
    }

    if ( p_sys->p_current_block )
    {
        p_sys->p_current_block->i_flags = p_sys->i_next_block_flags;
        p_sys->i_next_block_flags = 0;
        p_sys->p_current_block->i_pts =
        p_sys->p_current_block->i_dts = p_sys->b_start ? VLC_TICK_0 : VLC_TICK_INVALID;
    }

    while( (p_block_out = FUNC0( p_sys->p_packetizer,
                            p_sys->b_stream_info ? &p_sys->stream_info : NULL,
                            p_sys->p_current_block ? &p_sys->p_current_block : NULL ) ) )
    {
        /* Only clear on output when packet is accepted as sync #17111 */
        p_sys->b_start = false;
        while( p_block_out )
        {
            block_t *p_next = p_block_out->p_next;

            p_block_out->p_next = NULL;

            /* set PCR */
            if( FUNC4(p_sys->i_pts == VLC_TICK_INVALID) )
                FUNC3( p_demux->out, FUNC1(p_block_out->i_dts - 1, VLC_TICK_0) );

            p_sys->i_pts = p_block_out->i_dts;

            FUNC2( p_demux->out, p_sys->p_es, p_block_out );

            FUNC3( p_demux->out, p_sys->i_pts );

            p_block_out = p_next;
        }
        break;
    }

    return b_eof ? VLC_DEMUXER_EOF : VLC_DEMUXER_SUCCESS;
}