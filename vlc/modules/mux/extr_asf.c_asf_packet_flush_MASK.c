#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_7__ {int i_packet_size; int i_pk_used; int i_pk_frame; int /*<<< orphan*/  i_packet_count; TYPE_3__* pk; scalar_t__ i_preroll_time; scalar_t__ i_dts_first; scalar_t__ i_pk_dts; int /*<<< orphan*/  i_seq; scalar_t__ b_asf_http; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
typedef  int /*<<< orphan*/  bo_t ;
struct TYPE_8__ {int p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static block_t *FUNC7( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    int i_pad, i_preheader = p_sys->b_asf_http ? 12 : 0;
    block_t *pk;
    bo_t bo;

    if( !p_sys->pk ) return 0;

    i_pad = p_sys->i_packet_size - p_sys->i_pk_used;
    FUNC6( p_sys->pk->p_buffer + p_sys->i_pk_used, 0, i_pad );

    FUNC5( &bo, p_sys->pk->p_buffer, 14 + i_preheader );

    if( p_sys->b_asf_http )
        FUNC1( &bo, 0x4424, p_sys->i_packet_size, 0x0, p_sys->i_seq++);

    FUNC2   ( &bo, 0x82 );
    FUNC3( &bo, 0 );
    FUNC2( &bo, 0x11 );
    FUNC2( &bo, 0x5d );
    FUNC3( &bo, i_pad );
    FUNC4( &bo, FUNC0(p_sys->i_pk_dts - p_sys->i_dts_first) +
                  p_sys->i_preroll_time );
    FUNC3( &bo, 0 /* data->i_length */ );
    FUNC2( &bo, 0x80 | p_sys->i_pk_frame );

    pk = p_sys->pk;
    p_sys->pk = NULL;

    p_sys->i_packet_count++;

    return pk;
}