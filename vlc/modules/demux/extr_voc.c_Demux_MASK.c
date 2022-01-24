#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_14__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_12__ {scalar_t__ i_bytes_per_frame; scalar_t__ i_frame_length; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;
struct TYPE_15__ {scalar_t__ i_silence_countdown; scalar_t__ i_block_end; int /*<<< orphan*/ * p_es; int /*<<< orphan*/  pts; TYPE_2__ fmt; } ;
typedef  TYPE_4__ demux_sys_t ;
struct TYPE_16__ {scalar_t__ i_pts; scalar_t__ i_nb_samples; scalar_t__ i_dts; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 scalar_t__ MAX_READ_FRAME ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int VLC_ENOMEM ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t     *p_block;
    int64_t     i_read_frames;

    if( p_sys->i_silence_countdown == 0 )
    {
        int64_t i_offset = FUNC10( p_demux->s );
        if( i_offset >= p_sys->i_block_end )
        {
            if( FUNC0( p_demux ) != VLC_SUCCESS )
                return VLC_DEMUXER_EOF;
            return VLC_DEMUXER_SUCCESS;
        }

        i_read_frames = ( p_sys->i_block_end - i_offset )
                      / p_sys->fmt.audio.i_bytes_per_frame;

        if( i_read_frames > MAX_READ_FRAME )
            i_read_frames = MAX_READ_FRAME;

        p_block = FUNC9( p_demux->s,
                                    p_sys->fmt.audio.i_bytes_per_frame
                                    * i_read_frames );
        if( p_block == NULL )
        {
            FUNC8( p_demux, "cannot read data" );
            return VLC_DEMUXER_EOF;
        }
    }
    else
    {   /* emulates silence from the stream */
        i_read_frames = p_sys->i_silence_countdown;
        if( i_read_frames > MAX_READ_FRAME )
            i_read_frames = MAX_READ_FRAME;

        p_block = FUNC2( i_read_frames );
        if( p_block == NULL )
            return VLC_ENOMEM;

        FUNC7( p_block->p_buffer, 0, i_read_frames );
        p_sys->i_silence_countdown -= i_read_frames;
    }

    p_block->i_dts = p_block->i_pts = VLC_TICK_0 + FUNC3( &p_sys->pts );
    p_block->i_nb_samples = i_read_frames * p_sys->fmt.audio.i_frame_length;
    FUNC4( &p_sys->pts, p_block->i_nb_samples );
    FUNC6( p_demux->out, p_block->i_pts );
    FUNC1(p_sys->p_es != NULL);
    FUNC5( p_demux->out, p_sys->p_es, p_block );

    return VLC_DEMUXER_SUCCESS;
}