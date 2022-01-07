
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_7__ {int timestamp_fifo; } ;
struct TYPE_9__ {TYPE_1__ video; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_10__ {int i_dts; scalar_t__ i_pts; } ;
typedef TYPE_4__ block_t ;


 int VLC_TICK_INVALID ;
 int timestamp_FifoPut (int ,int ) ;

__attribute__((used)) static int Video_OnNewBlock(decoder_t *p_dec, block_t **pp_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_block = *pp_block;

    timestamp_FifoPut(p_sys->video.timestamp_fifo,
                      p_block->i_pts ? VLC_TICK_INVALID : p_block->i_dts);

    return 1;
}
