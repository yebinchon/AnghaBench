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
struct TYPE_13__ {int i_track_id; scalar_t__ p_es; } ;
typedef  TYPE_1__ vobsub_track_t ;
typedef  int uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_15__ {int i_tracks; TYPE_1__* track; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_16__ {int* p_buffer; size_t i_buffer; int /*<<< orphan*/  i_pts; scalar_t__ i_length; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int FUNC8 (int*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10( demux_t *p_demux, block_t *p_bk )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    uint8_t     *p = p_bk->p_buffer;
    uint8_t     *p_end = &p_bk->p_buffer[p_bk->i_buffer];
    int i;

    while( p + 6 < p_end )
    {
        int i_size = FUNC8( p, p_end - p );
        block_t *p_pkt;
        int      i_id = 0;
        int      i_spu;

        if( i_size <= 0 )
            break;

        if( i_size > p_end - p )
        {
            FUNC5( p_demux, "broken PES size" );
            break;
        }

        if( p[0] != 0 || p[1] != 0 || p[2] != 0x01 )
        {
            FUNC5( p_demux, "invalid PES" );
            break;
        }

        i_id = FUNC6( p, i_size );
        if( (i_id&0xffe0) != 0xbd20 )
        {
            /* msg_Dbg( p_demux, "we don't need these ps packets (id=0x1%2.2x)", p[3] ); */
            p += i_size;
            continue;
        }

        /* Create a block */
        p_pkt = FUNC1( i_size );
        if( FUNC9(p_pkt == NULL) )
            break;
        FUNC4( p_pkt->p_buffer, p, i_size);
        p += i_size;

        if( FUNC7( FUNC0(p_demux), p_pkt, 1 ) )
        {
            FUNC2( p_pkt );
            continue;
        }
        i_spu = i_id&0x1f;
        /* msg_Dbg( p_demux, "SPU track %d size %d", i_spu, i_size ); */

        for( i = 0; i < p_sys->i_tracks; i++ )
        {
            vobsub_track_t *p_tk = &p_sys->track[i];

            p_pkt->i_dts = p_pkt->i_pts = p_bk->i_pts;
            p_pkt->i_length = 0;

            if( p_tk->p_es && p_tk->i_track_id == i_spu )
            {
                FUNC3( p_demux->out, p_tk->p_es, p_pkt );
                p_bk->i_pts = VLC_TICK_INVALID;     /*only first packet has a pts */
                break;
            }
        }
        if( i >= p_sys->i_tracks )
        {
            FUNC2( p_pkt );
        }
    }

    return VLC_SUCCESS;
}