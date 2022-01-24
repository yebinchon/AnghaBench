#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ stime_t ;
struct TYPE_11__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_12__ {int b_pcr_audio; int /*<<< orphan*/  p_audio; TYPE_3__* p_pes; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_13__ {unsigned int i_buffer; unsigned int p_buffer; scalar_t__ i_pts; void* i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int*,int) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int,int,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t     *p_pes = p_sys->p_pes;
    uint8_t     hdr[30];

    unsigned    i_skip;
    stime_t     i_dts = -1;
    stime_t     i_pts = -1;

    p_sys->p_pes = NULL;

    /* FIXME find real max size */
    FUNC2( p_pes, hdr, 30 );

    /* See §2.4.3.6 of ISO 13818-1 */
    if( hdr[0] != 0 || hdr[1] != 0 || hdr[2] != 1 )
    {
        FUNC7( p_demux, "invalid hdr [0x%2.2x:%2.2x:%2.2x:%2.2x]",
                  hdr[0], hdr[1],hdr[2],hdr[3] );
        FUNC4( p_pes );
        return;
    }
    // hdr[4] i_pes_size, 2 bytes
    // hdr[6] Marker -> original_or_copy

    /* we assume mpeg2 PES */
    i_skip = hdr[8] + 9;
    if( hdr[7]&0x80 )    /* has pts */
    {
        i_pts = FUNC1( &hdr[9] );

        if( hdr[7]&0x40 )    /* has dts */
        {
             i_dts = FUNC1( &hdr[14] );
        }
    }

    p_pes = FUNC3( p_pes );
    if( FUNC8(p_pes == NULL) )
        return;
    if( p_pes->i_buffer <= i_skip )
    {
        FUNC4( p_pes );
        return;
    }

    p_pes->i_buffer -= i_skip;
    p_pes->p_buffer += i_skip;

    if( i_dts >= 0 )
        p_pes->i_dts = FUNC0(i_dts);
    if( i_pts >= 0 )
        p_pes->i_pts = FUNC0(i_pts);

    /* Set PCR */
    if( p_pes->i_pts != VLC_TICK_INVALID )
    {
        FUNC6( p_demux->out, p_pes->i_pts);
        p_sys->b_pcr_audio = true;
    }
    FUNC5( p_demux->out, p_sys->p_audio, p_pes );
}