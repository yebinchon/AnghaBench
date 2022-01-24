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
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_6__ {int /*<<< orphan*/  pts; } ;
struct TYPE_8__ {int b_recovered; int /*<<< orphan*/  dts; int /*<<< orphan*/  i_next_block_flags; TYPE_1__ prevdatedpoc; int /*<<< orphan*/  pocctx; int /*<<< orphan*/  i_recoveryfnum; int /*<<< orphan*/ * p_active_sps; int /*<<< orphan*/ * p_active_pps; int /*<<< orphan*/  b_slice; } ;
typedef  TYPE_3__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( void *p_private, bool b_flush )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( b_flush || !p_sys->b_slice )
    {
        FUNC0( p_sys );
        FUNC1( p_sys );
        p_sys->p_active_pps = NULL;
        p_sys->p_active_sps = NULL;
        p_sys->b_recovered = false;
        p_sys->i_recoveryfnum = UINT_MAX;
        /* POC */
        FUNC3( &p_sys->pocctx );
        p_sys->prevdatedpoc.pts = VLC_TICK_INVALID;
    }
    p_sys->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
    FUNC2( &p_sys->dts, VLC_TICK_INVALID );
}