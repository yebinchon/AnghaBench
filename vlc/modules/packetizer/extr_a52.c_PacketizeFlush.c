
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int b_discontuinity; int bytestream; int i_prev_bytestream_pts; int i_state; int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;


 int STATE_NOSYNC ;
 int VLC_TICK_INVALID ;
 int block_BytestreamEmpty (int *) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void PacketizeFlush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->b_discontuinity = 1;
    date_Set( &p_sys->end_date, VLC_TICK_INVALID );
    p_sys->i_state = STATE_NOSYNC;
    p_sys->i_prev_bytestream_pts = VLC_TICK_INVALID;
    block_BytestreamEmpty( &p_sys->bytestream );
}
