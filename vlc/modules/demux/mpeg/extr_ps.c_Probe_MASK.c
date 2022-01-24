#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_11__ {scalar_t__ i_last_pts; scalar_t__ i_first_pts; int /*<<< orphan*/  i_skip; } ;
typedef  TYPE_1__ ps_track_t ;
struct TYPE_12__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {int b_have_pack; int b_lost_sync; scalar_t__ i_first_scr; TYPE_1__* tk; int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_14__ {scalar_t__ i_pts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int PS_STREAM_ID_PACK_HEADER ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 size_t FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9( demux_t *p_demux, bool b_end )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    int i_ret, i_id;
    block_t *p_pkt;

    i_ret = FUNC8( p_demux->s, p_sys->format, p_sys->b_have_pack );
    if( i_ret < 0 )
    {
        return VLC_DEMUXER_EOF;
    }
    else if( i_ret == 0 )
    {
        if( !p_sys->b_lost_sync )
            FUNC2( p_demux, "garbage at input, trying to resync..." );

        p_sys->b_lost_sync = true;
        return VLC_DEMUXER_SUCCESS;
    }

    if( p_sys->b_lost_sync ) FUNC2( p_demux, "found sync code" );
    p_sys->b_lost_sync = false;

    if( ( p_pkt = FUNC7( p_demux->s ) ) == NULL )
    {
        return VLC_DEMUXER_EOF;
    }

    i_id = FUNC4( p_pkt->p_buffer, p_pkt->i_buffer );
    if( i_id >= 0xc0 )
    {
        ps_track_t *tk = &p_sys->tk[FUNC3(i_id)];
        if( !FUNC6( FUNC0(p_demux), p_pkt, tk->i_skip ) &&
             p_pkt->i_pts != VLC_TICK_INVALID )
        {
            if( b_end && (tk->i_last_pts == VLC_TICK_INVALID || p_pkt->i_pts > tk->i_last_pts) )
            {
                tk->i_last_pts = p_pkt->i_pts;
            }
            else if ( tk->i_first_pts == VLC_TICK_INVALID )
            {
                tk->i_first_pts = p_pkt->i_pts;
            }
        }
    }
    else if( i_id == PS_STREAM_ID_PACK_HEADER )
    {
        vlc_tick_t i_scr; int dummy;
        if( !b_end && !FUNC5( p_pkt->p_buffer, p_pkt->i_buffer,
                                          &i_scr, &dummy ) )
        {
            if( p_sys->i_first_scr == VLC_TICK_INVALID )
                p_sys->i_first_scr = i_scr;
        }
        p_sys->b_have_pack = true;
    }

    FUNC1( p_pkt );
    return VLC_DEMUXER_SUCCESS;
}