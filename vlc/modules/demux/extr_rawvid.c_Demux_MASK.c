#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {int /*<<< orphan*/  pcr; int /*<<< orphan*/  p_es_video; int /*<<< orphan*/  frame_size; scalar_t__ b_y4m; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC6( demux_t *p_demux )
{
    demux_sys_t *p_sys  = p_demux->p_sys;
    block_t     *p_block;
    vlc_tick_t i_pcr = FUNC0( &p_sys->pcr );

    /* Call the pace control */
    FUNC3( p_demux->out, i_pcr );

    if( p_sys->b_y4m )
    {
        /* Skip the frame header */
        /* Skip "FRAME" */
        if( FUNC5( p_demux->s, NULL, 5 ) < 5 )
            return VLC_DEMUXER_EOF;
        /* Find \n */
        for( ;; )
        {
            uint8_t b;
            if( FUNC5( p_demux->s, &b, 1 ) < 1 )
                return VLC_DEMUXER_EOF;
            if( b == 0x0a )
                break;
        }
    }

    p_block = FUNC4( p_demux->s, p_sys->frame_size );
    if( p_block == NULL )
        return VLC_DEMUXER_EOF;

    p_block->i_dts = p_block->i_pts = i_pcr;
    FUNC2( p_demux->out, p_sys->p_es_video, p_block );

    FUNC1( &p_sys->pcr, 1 );

    return VLC_DEMUXER_SUCCESS;
}