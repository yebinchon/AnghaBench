
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int b_mlp; int b_discontinuity; int end_date; int bytestream; int i_state; } ;
typedef TYPE_2__ decoder_sys_t ;


 int STATE_NOSYNC ;
 int VLC_TICK_INVALID ;
 int block_BytestreamEmpty (int *) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    p_sys->b_mlp = 0;
    p_sys->i_state = STATE_NOSYNC;
    p_sys->b_discontinuity = 1;
    block_BytestreamEmpty( &p_sys->bytestream );
    date_Set( &p_sys->end_date, VLC_TICK_INVALID );
}
