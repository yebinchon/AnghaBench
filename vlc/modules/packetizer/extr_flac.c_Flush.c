
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int bytestream; int pts; scalar_t__ i_offset; int i_state; } ;
typedef TYPE_2__ decoder_sys_t ;


 int STATE_NOSYNC ;
 int VLC_TICK_INVALID ;
 int block_BytestreamEmpty (int *) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void Flush(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->i_state = STATE_NOSYNC;
    p_sys->i_offset = 0;
    date_Set( &p_sys->pts, VLC_TICK_INVALID );
    block_BytestreamEmpty(&p_sys->bytestream);
}
