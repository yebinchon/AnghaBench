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
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_10__ {int i_instant_bitrate; scalar_t__ b_mpeg2; scalar_t__ i_dts_delay; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
typedef  int int64_t ;
struct TYPE_11__ {int i_buffer; int /*<<< orphan*/  p_buffer; scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef  TYPE_3__ block_t ;
typedef  int /*<<< orphan*/  bits_buffer_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,TYPE_3__*) ; 

__attribute__((used)) static void FUNC5( sout_mux_t *p_mux, block_t **p_buf,
                                vlc_tick_t i_dts )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    bits_buffer_t bits;
    block_t *p_hdr;
    int64_t i_scr;
    int i_mux_rate;

    i_scr = FUNC0(i_dts - p_sys->i_dts_delay);

    p_hdr = FUNC3( 18 );
    if( !p_hdr )
        return;
    p_hdr->i_pts = p_hdr->i_dts = i_dts;
    FUNC1( &bits, 14, p_hdr->p_buffer );
    FUNC2( &bits, 32, 0x01ba );

    /* The spec specifies that the mux rate must be rounded upwards */
    i_mux_rate = (p_sys->i_instant_bitrate + 8 * 50 - 1 ) / (8 * 50);

    if( p_sys->b_mpeg2 )
    {
        FUNC2( &bits, 2, 0x01 );
    }
    else
    {
        FUNC2( &bits, 4, 0x02 );
    }

    FUNC2( &bits, 3, ( i_scr >> 30 )&0x07 );
    FUNC2( &bits, 1,  1 ); // marker
    FUNC2( &bits, 15, ( i_scr >> 15 )&0x7fff );
    FUNC2( &bits, 1,  1 ); // marker
    FUNC2( &bits, 15, i_scr&0x7fff );
    FUNC2( &bits, 1,  1 ); // marker

    if( p_sys->b_mpeg2 )
    {
        FUNC2( &bits, 9,  0 ); // src extension
    }
    FUNC2( &bits, 1,  1 );     // marker

    FUNC2( &bits, 22, i_mux_rate);
    FUNC2( &bits, 1,  1 );     // marker

    if( p_sys->b_mpeg2 )
    {
        FUNC2( &bits, 1,  1 );     // marker
        FUNC2( &bits, 5,  0x1f );  // reserved
        FUNC2( &bits, 3,  0 );     // stuffing bytes
    }

    p_hdr->i_buffer = p_sys->b_mpeg2 ? 14: 12;

    FUNC4( p_buf, p_hdr );
}