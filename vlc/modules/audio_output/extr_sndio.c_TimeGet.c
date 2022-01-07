
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int rate; int delay; int started; } ;
typedef TYPE_2__ aout_sys_t ;


 int vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static int TimeGet (audio_output_t *aout, vlc_tick_t *restrict delay)
{
    aout_sys_t *sys = aout->sys;

    if (!sys->started)
        return -1;
    *delay = vlc_tick_from_samples(sys->delay, sys->rate);
    return 0;
}
