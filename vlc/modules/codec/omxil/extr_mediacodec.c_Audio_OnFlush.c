
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_5__ {int i_end_date; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
typedef TYPE_3__ decoder_sys_t ;


 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void Audio_OnFlush(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    date_Set(&p_sys->audio.i_end_date, VLC_TICK_INVALID);
}
