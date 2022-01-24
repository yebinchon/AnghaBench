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
struct TYPE_9__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int /*<<< orphan*/  f_rate; scalar_t__ i_pcr; scalar_t__ b_hurry_up; scalar_t__ p_es_video; scalar_t__ p_es_audio; int /*<<< orphan*/  frame_size; scalar_t__ i_dsf; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_11__ {scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_GET_ES_STATE ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8( demux_t *p_demux )
{
    demux_sys_t *p_sys  = p_demux->p_sys;
    block_t     *p_block;
    bool  b_audio = false;

    if( p_sys->b_hurry_up )
    {
         /* 3 frames */
        p_sys->i_pcr = FUNC6() + (p_sys->i_dsf ? FUNC0(120) : FUNC0(90));
    }

    /* Call the pace control */
    FUNC4( p_demux->out, VLC_TICK_0 + p_sys->i_pcr );
    p_block = FUNC5( p_demux->s, p_sys->frame_size );
    if( p_block == NULL )
        return VLC_DEMUXER_EOF;

    if( p_sys->p_es_audio )
    {
        FUNC2( p_demux->out, ES_OUT_GET_ES_STATE,
                        p_sys->p_es_audio, &b_audio );
    }

    p_block->i_dts =
    p_block->i_pts = VLC_TICK_0 + p_sys->i_pcr;

    if( b_audio )
    {
        block_t *p_audio_block = FUNC1( p_block );
        if( p_audio_block )
            FUNC3( p_demux->out, p_sys->p_es_audio, p_audio_block );
    }

    FUNC3( p_demux->out, p_sys->p_es_video, p_block );

    if( !p_sys->b_hurry_up )
    {
        p_sys->i_pcr += FUNC7( p_sys->f_rate );
    }

    return VLC_DEMUXER_SUCCESS;
}