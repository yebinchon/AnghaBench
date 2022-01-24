#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int uint8_t ;
struct TYPE_13__ {int i_next_block_flags; int /*<<< orphan*/  es; int /*<<< orphan*/  i_skip; int /*<<< orphan*/  b_configured; } ;
typedef  TYPE_1__ ps_track_t ;
struct TYPE_14__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_15__ {int i_mux_rate; TYPE_1__* tk; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_16__ {int i_flags; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CELL_DISCONTINUITY ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 size_t FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int const*,int) ; 

__attribute__((used)) static int FUNC13( demux_t *p_demux, const uint8_t *p, int len )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    while( len > 0 )
    {
        int i_size = FUNC12( p, len );
        if( i_size <= 0 || i_size > len )
        {
            break;
        }

        /* Create a block */
        block_t *p_pkt = FUNC2( i_size );
        if( !p_pkt )
            return VLC_EGENERIC;
        FUNC6( p_pkt->p_buffer, p, i_size);

        /* Parse it and send it */
        switch( 0x100 | p[3] )
        {
        case 0x1b9:
        case 0x1bb:
        case 0x1bc:
#ifdef DVDNAV_DEBUG
            if( p[3] == 0xbc )
            {
                msg_Warn( p_demux, "received a PSM packet" );
            }
            else if( p[3] == 0xbb )
            {
                msg_Warn( p_demux, "received a SYSTEM packet" );
            }
#endif
            FUNC3( p_pkt );
            break;

        case 0x1ba:
        {
            vlc_tick_t i_scr;
            int i_mux_rate;
            if( !FUNC10( p_pkt->p_buffer, p_pkt->i_buffer,
                                    &i_scr, &i_mux_rate ) )
            {
                FUNC5( p_demux->out, i_scr );
                if( i_mux_rate > 0 ) p_sys->i_mux_rate = i_mux_rate;
            }
            FUNC3( p_pkt );
            break;
        }
        default:
        {
            int i_id = FUNC9( p_pkt->p_buffer, p_pkt->i_buffer );
            if( i_id >= 0xc0 )
            {
                ps_track_t *tk = &p_sys->tk[FUNC8(i_id)];

                if( !tk->b_configured )
                {
                    FUNC0( p_demux, i_id );
                }

                if( tk->es &&
                    !FUNC11( FUNC1(p_demux), p_pkt, tk->i_skip ) )
                {
                    int i_next_block_flags = tk->i_next_block_flags;
                    tk->i_next_block_flags = 0;
                    if( i_next_block_flags & BLOCK_FLAG_CELL_DISCONTINUITY )
                    {
                        if( p_pkt->i_dts != VLC_TICK_INVALID )
                        {
                            i_next_block_flags &= ~BLOCK_FLAG_CELL_DISCONTINUITY;
                            i_next_block_flags |= BLOCK_FLAG_DISCONTINUITY;
                        }
                        else tk->i_next_block_flags = BLOCK_FLAG_CELL_DISCONTINUITY;
                    }
                    p_pkt->i_flags |= i_next_block_flags;
                    FUNC4( p_demux->out, tk->es, p_pkt );
                }
                else
                {
                    tk->i_next_block_flags = 0;
                    FUNC3( p_pkt );
                }
            }
            else
            {
                FUNC3( p_pkt );
            }
            break;
        }
        }

        p += i_size;
        len -= i_size;
    }

    return VLC_SUCCESS;
}