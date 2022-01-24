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
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_10__ {scalar_t__ const i_data_pos; int i_seekpoint; int /*<<< orphan*/  i_next_block_flags; TYPE_1__** seekpoint; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_8__ {scalar_t__ i_time_offset; scalar_t__ i_byte_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_DISCONTINUITY ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ES_OUT_SET_NEXT_DISPLAY_TIME ; 
 int FUNC1 (TYPE_2__*,scalar_t__,double const,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8( demux_t *p_demux, vlc_tick_t i_time )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    bool b_seekable;
    int i;

    /* */
    FUNC6( p_demux->s, STREAM_CAN_SEEK, &b_seekable );
    if( !b_seekable )
        return VLC_EGENERIC;

    const vlc_tick_t i_length = FUNC0( p_demux );
    if( i_length <= 0 )
        return VLC_EGENERIC;

    const uint64_t i_stream_size = FUNC5( p_demux->s );
    if( i_stream_size <= p_sys->i_data_pos )
        return VLC_EGENERIC;

    const double i_bytemicrorate = (double) i_length / (i_stream_size - p_sys->i_data_pos);
    if( i_bytemicrorate == 0 )
        return VLC_EGENERIC;

    uint64_t i_lower = p_sys->i_data_pos;
    uint64_t i_upper = i_stream_size;
    uint64_t i_start_pos;

    FUNC3( p_sys->i_seekpoint > 0 );   /* ReadMeta ensure at least (0,0) */
    if( p_sys->i_seekpoint > 1 )
    {
        /* lookup base offset */
        for( i = p_sys->i_seekpoint-1; i >= 0; i-- )
        {
            if( p_sys->seekpoint[i]->i_time_offset <= i_time )
                break;
        }

        i_lower = p_sys->seekpoint[0]->i_byte_offset + p_sys->i_data_pos;
        if( i+1 < p_sys->i_seekpoint )
            i_upper = p_sys->seekpoint[i+1]->i_byte_offset + p_sys->i_data_pos;

        i_start_pos = i_lower;
    }
    else
    {
        i_start_pos = i_time / i_bytemicrorate;
    }

    if( VLC_SUCCESS != FUNC7( p_demux->s, i_start_pos ) )
        return VLC_EGENERIC;

    int i_ret = FUNC1( p_demux, i_time, i_bytemicrorate, i_lower, i_upper );
    if( i_ret == VLC_SUCCESS )
    {
        p_sys->i_next_block_flags |= BLOCK_FLAG_DISCONTINUITY;
        FUNC2( p_sys );
        FUNC4( p_demux->out, ES_OUT_SET_NEXT_DISPLAY_TIME, i_time );
    }

    return i_ret;
}