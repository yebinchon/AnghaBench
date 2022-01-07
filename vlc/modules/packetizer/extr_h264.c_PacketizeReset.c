
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_6__ {int pts; } ;
struct TYPE_8__ {int b_recovered; int dts; int i_next_block_flags; TYPE_1__ prevdatedpoc; int pocctx; int i_recoveryfnum; int * p_active_sps; int * p_active_pps; int b_slice; } ;
typedef TYPE_3__ decoder_sys_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int DropStoredNAL (TYPE_3__*) ;
 int ResetOutputVariables (TYPE_3__*) ;
 int UINT_MAX ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;
 int h264_poc_context_init (int *) ;

__attribute__((used)) static void PacketizeReset( void *p_private, bool b_flush )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( b_flush || !p_sys->b_slice )
    {
        DropStoredNAL( p_sys );
        ResetOutputVariables( p_sys );
        p_sys->p_active_pps = ((void*)0);
        p_sys->p_active_sps = ((void*)0);
        p_sys->b_recovered = 0;
        p_sys->i_recoveryfnum = UINT_MAX;

        h264_poc_context_init( &p_sys->pocctx );
        p_sys->prevdatedpoc.pts = VLC_TICK_INVALID;
    }
    p_sys->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
    date_Set( &p_sys->dts, VLC_TICK_INVALID );
}
