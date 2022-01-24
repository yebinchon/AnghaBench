#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ uint8_t ;
struct TYPE_22__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_23__ {int b_need_ts; scalar_t__ pts; scalar_t__ sets; int /*<<< orphan*/  dts; scalar_t__ b_recovery_point; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_24__ {int i_flags; scalar_t__ i_dts; scalar_t__ i_pts; int i_buffer; int* p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_AU_END ; 
 int BLOCK_FLAG_DROP ; 
 scalar_t__ COMPLETE ; 
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ HEVC_NAL_VPS ; 
 scalar_t__ MISSING ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC2 (TYPE_1__*,scalar_t__,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_1__*,scalar_t__,TYPE_3__*) ; 
 scalar_t__ SENT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__ const) ; 
 scalar_t__ FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static block_t *FUNC13(decoder_t *p_dec, bool *pb_ts_used, block_t *p_frag)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    *pb_ts_used = false;
    bool b_au_end = p_frag->i_flags & BLOCK_FLAG_AU_END;

    if(p_sys->b_need_ts)
    {
        if(p_frag->i_dts != VLC_TICK_INVALID)
            FUNC8(&p_sys->dts, p_frag->i_dts);
        p_sys->pts = p_frag->i_pts;
        if(FUNC7( &p_sys->dts ) != VLC_TICK_INVALID)
            p_sys->b_need_ts = false;
        *pb_ts_used = true;
    }

    if(FUNC12(p_frag->i_buffer < 5))
    {
        FUNC11(p_dec,"NAL too small");
        FUNC6(p_frag);
        return NULL;
    }

    if(p_frag->p_buffer[4] & 0x80)
    {
        FUNC11(p_dec,"Forbidden zero bit not null, corrupted NAL");
        FUNC6(p_frag);
        return FUNC0(FUNC1(p_sys, false)); /* will drop */
    }

    /* Get NALU type */
    const vlc_tick_t dts = p_frag->i_dts, pts = p_frag->i_pts;
    block_t * p_output = NULL;
    uint8_t i_nal_type = FUNC9(&p_frag->p_buffer[4]);

    if (i_nal_type < HEVC_NAL_VPS)
    {
        /* NAL is a VCL NAL */
        p_output = FUNC3(p_dec, i_nal_type, p_frag);
        if (p_output && (p_output->i_flags & BLOCK_FLAG_DROP))
            FUNC10(p_dec, "Waiting for VPS/SPS/PPS");
    }
    else
    {
        p_output = FUNC2(p_dec, i_nal_type, p_frag);
    }

    if( !p_output && b_au_end )
        p_output = FUNC1(p_sys, p_sys->sets != MISSING &&
                                       p_sys->b_recovery_point);

    p_output = FUNC0(p_output);
    if(p_output)
    {
        if(p_sys->sets != SENT)
        {
            FUNC5(p_sys->sets == COMPLETE);
            p_sys->sets = SENT;
        }

        FUNC4( p_dec, p_output );
        if (dts != VLC_TICK_INVALID)
            FUNC8(&p_sys->dts, dts);
        p_sys->pts = pts;
        *pb_ts_used = true;
    }

    return p_output;
}