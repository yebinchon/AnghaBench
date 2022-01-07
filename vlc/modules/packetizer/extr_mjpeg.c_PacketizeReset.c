
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_4__ {int i_next_block_flags; int date; } ;
typedef TYPE_2__ decoder_sys_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int VLC_TICK_INVALID ;
 int VLC_UNUSED (int) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void PacketizeReset( void *p_private, bool b_flush )
{
    VLC_UNUSED(b_flush);
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    date_Set( &p_sys->date, VLC_TICK_INVALID );
    p_sys->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
}
