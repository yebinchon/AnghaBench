
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shift; int avg_initial; int avg; int shift_var; int var; int start; } ;
typedef TYPE_1__ vout_chrono_t ;
typedef int vlc_tick_t ;


 int VLC_TICK_INVALID ;

__attribute__((used)) static inline void vout_chrono_Init(vout_chrono_t *chrono, int shift, vlc_tick_t avg_initial)
{
    chrono->shift = shift;
    chrono->avg_initial =
    chrono->avg = avg_initial;

    chrono->shift_var = shift+1;
    chrono->var = avg_initial / 2;

    chrono->start = VLC_TICK_INVALID;
}
