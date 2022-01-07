
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int s; } ;
typedef TYPE_2__ aout_sys_t ;


 int Pause (int *,int) ;

__attribute__((used)) static void OutputPause( audio_output_t *aout, bool pause, vlc_tick_t date )
{
    aout_sys_t *sys = aout->sys;
    Pause( &sys->s, pause );
    (void) date;
}
