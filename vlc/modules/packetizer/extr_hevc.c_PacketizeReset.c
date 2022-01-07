
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int b_recovery_point; int b_need_ts; int dts; int sets; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;


 int MISSING ;
 int * OutputQueues (TYPE_2__*,int) ;
 int VLC_TICK_INVALID ;
 int block_ChainRelease (int *) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void PacketizeReset(void *p_private, bool b_flush)
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    block_t *p_out = OutputQueues(p_sys, 0);
    if(p_out)
        block_ChainRelease(p_out);

    if(b_flush)
    {
        p_sys->sets = MISSING;
        p_sys->b_recovery_point = 0;
    }
    p_sys->b_need_ts = 1;
    date_Set(&p_sys->dts, VLC_TICK_INVALID);
}
