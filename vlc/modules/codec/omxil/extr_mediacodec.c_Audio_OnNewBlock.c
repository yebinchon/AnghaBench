
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
struct TYPE_7__ {int i_end_date; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_10__ {scalar_t__ i_pts; } ;
typedef TYPE_4__ block_t ;


 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ date_Get (int *) ;
 int date_Set (int *,scalar_t__) ;

__attribute__((used)) static int Audio_OnNewBlock(decoder_t *p_dec, block_t **pp_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_block = *pp_block;


    if (date_Get(&p_sys->audio.i_end_date) == VLC_TICK_INVALID)
    {
        if (p_block->i_pts == VLC_TICK_INVALID)
            return 0;
        date_Set(&p_sys->audio.i_end_date, p_block->i_pts);
    }

    return 1;
}
