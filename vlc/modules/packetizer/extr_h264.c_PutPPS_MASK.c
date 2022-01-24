#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {size_t i_id; int /*<<< orphan*/  i_sps_id; } ;
typedef  TYPE_2__ h264_picture_parameter_set_t ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_18__ {TYPE_1__* pps; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_19__ {size_t i_buffer; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_15__ {int /*<<< orphan*/  p_pps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,size_t,TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 

__attribute__((used)) static void FUNC6( decoder_t *p_dec, block_t *p_frag )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    const uint8_t *p_buffer = p_frag->p_buffer;
    size_t i_buffer = p_frag->i_buffer;

    if( !FUNC3( &p_buffer, &i_buffer ) )
    {
        FUNC1( p_frag );
        return;
    }

    h264_picture_parameter_set_t *p_pps = FUNC2( p_buffer, i_buffer, true );
    if( !p_pps )
    {
        FUNC5( p_dec, "invalid PPS" );
        FUNC1( p_frag );
        return;
    }

    /* We have a new PPS */
    if( !p_sys->pps[p_pps->i_id].p_pps )
        FUNC4( p_dec, "found NAL_PPS (pps_id=%d sps_id=%d)", p_pps->i_id, p_pps->i_sps_id );

    FUNC0( p_sys, p_pps->i_id, p_frag, p_pps );
}