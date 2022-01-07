
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;


 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void Flush(decoder_t *dec)
{
    decoder_sys_t *sys = dec->p_sys;

    date_Set(&sys->end_date, VLC_TICK_INVALID);
}
