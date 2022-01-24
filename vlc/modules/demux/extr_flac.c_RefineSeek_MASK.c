#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int /*<<< orphan*/  stream_info; scalar_t__ b_stream_info; int /*<<< orphan*/  p_packetizer; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_11__ {unsigned int i_buffer; scalar_t__ i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 unsigned int FLAC_FRAME_SIZE_MIN ; 
 scalar_t__ FLAC_MAX_PREROLL ; 
 scalar_t__ FLAC_MAX_SLOW_PREROLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  STREAM_CAN_FASTSEEK ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10( demux_t *p_demux, vlc_tick_t i_time, double i_bytemicrorate,
                       uint64_t i_lowpos, uint64_t i_highpos )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    bool b_found = false;
    block_t *p_block_out;
    block_t *p_block_in;

    unsigned i_frame_size = FLAC_FRAME_SIZE_MIN;

    bool b_canfastseek = false;
    FUNC7( p_demux->s, STREAM_CAN_FASTSEEK, &b_canfastseek );

    uint64_t i_start_pos = FUNC9( p_demux->s );

    while( !b_found )
    {
        FUNC0( p_sys->p_packetizer );

        p_block_out = NULL;
        p_block_in = NULL;

        while( !p_block_out )
        {
            if( !p_block_in )
            {
                if( !(p_block_in = FUNC6( p_demux->s, i_frame_size )) )
                    break;
            }

            p_block_out = FUNC1( p_sys->p_packetizer,
                                              p_sys->b_stream_info ? &p_sys->stream_info : NULL,
                                             &p_block_in );
        }

        if( !p_block_out )
        {
            if( p_block_in )
                FUNC5( p_block_in );
            break;
        }

        if( p_block_out->i_buffer > i_frame_size )
            i_frame_size = p_block_out->i_buffer;

        /* If we are further than wanted block */
        if( p_block_out->i_dts >= i_time )
        {
            vlc_tick_t i_diff = p_block_out->i_dts - i_time;
            /* Not in acceptable approximation range */
            if( i_diff > FUNC2(100) && i_diff / i_bytemicrorate > i_frame_size )
            {
                i_highpos = i_start_pos;
                i_start_pos -= ( i_diff / i_bytemicrorate );
                i_start_pos = FUNC3(i_start_pos, i_lowpos + i_frame_size);
            }
            else b_found = true;
        }
        else
        {
            vlc_tick_t i_diff = i_time - p_block_out->i_dts;
            /* Not in acceptable NEXT_TIME demux range */
            if( i_diff >= ((b_canfastseek) ? FLAC_MAX_PREROLL : FLAC_MAX_SLOW_PREROLL) &&
                i_diff / i_bytemicrorate > i_frame_size )
            {
                i_lowpos = i_start_pos;
                i_start_pos += ( i_diff / i_bytemicrorate );
                i_start_pos = FUNC4(i_start_pos, i_highpos - i_frame_size);
            }
            else b_found = true;
        }

        if( p_block_out )
            FUNC5( p_block_out );
        if( p_block_in )
            FUNC5( p_block_in );

        if( !b_found )
        {
            if( i_highpos < i_lowpos || i_highpos - i_lowpos < i_frame_size )
                break;

            if( VLC_SUCCESS != FUNC8( p_demux->s, i_start_pos ) )
                break;
        }
    }

    return b_found ? VLC_SUCCESS : VLC_EGENERIC;
}