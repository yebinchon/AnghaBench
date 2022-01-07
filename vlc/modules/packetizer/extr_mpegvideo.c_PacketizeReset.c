
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_4__ {int b_frame_slice; int i_prev_temporal_ref; int b_sync_on_intra_frame; int b_waiting_iframe; int i_last_ref_pts; int i_pts; int i_dts; int prev_iframe_dts; int dts; int * p_frame; int ** pp_last; int i_next_block_flags; } ;
typedef TYPE_2__ decoder_sys_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int VLC_TICK_INVALID ;
 int VLC_UNUSED (int) ;
 int block_ChainRelease (int *) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void PacketizeReset( void *p_private, bool b_flush )
{
    VLC_UNUSED(b_flush);
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
    if( p_sys->p_frame )
    {
        block_ChainRelease( p_sys->p_frame );
        p_sys->p_frame = ((void*)0);
        p_sys->pp_last = &p_sys->p_frame;
        p_sys->b_frame_slice = 0;
    }
    date_Set( &p_sys->dts, VLC_TICK_INVALID );
    date_Set( &p_sys->prev_iframe_dts, VLC_TICK_INVALID );
    p_sys->i_dts =
    p_sys->i_pts =
    p_sys->i_last_ref_pts = VLC_TICK_INVALID;
    p_sys->b_waiting_iframe = p_sys->b_sync_on_intra_frame;
    p_sys->i_prev_temporal_ref = 2048;
}
