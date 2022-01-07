
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_4__ {int b_frame; int dts; void* i_frame_pts; void* i_frame_dts; int * p_frame; int ** pp_last; } ;
typedef TYPE_2__ decoder_sys_t ;


 void* VLC_TICK_INVALID ;
 int block_ChainRelease (int *) ;
 int date_Set (int *,void*) ;

__attribute__((used)) static void PacketizeReset( void *p_private, bool b_flush )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( b_flush )
    {
        if( p_sys->p_frame )
            block_ChainRelease( p_sys->p_frame );
        p_sys->p_frame = ((void*)0);
        p_sys->pp_last = &p_sys->p_frame;
        p_sys->b_frame = 0;
    }

    p_sys->i_frame_dts = VLC_TICK_INVALID;
    p_sys->i_frame_pts = VLC_TICK_INVALID;
    date_Set( &p_sys->dts, VLC_TICK_INVALID );
}
