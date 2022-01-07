
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {scalar_t__ (* time_get ) (TYPE_1__*,int *) ;int (* drain ) (TYPE_1__*) ;} ;
typedef TYPE_1__ audio_output_t ;


 int stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (TYPE_1__*,int *) ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static void aout_Drain(audio_output_t *aout)
{
    if (aout->drain)
        aout->drain(aout);
    else
    {
        vlc_tick_t delay;
        if (aout->time_get(aout, &delay) == 0)
            vlc_tick_sleep(delay);
    }
}
