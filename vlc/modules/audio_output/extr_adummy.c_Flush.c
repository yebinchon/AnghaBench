
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aout_sys {scalar_t__ length; int first_play_date; } ;
struct TYPE_3__ {struct aout_sys* sys; } ;
typedef TYPE_1__ audio_output_t ;


 int VLC_TICK_INVALID ;

__attribute__((used)) static void Flush(audio_output_t *aout)
{
    struct aout_sys *sys = aout->sys;

    sys->first_play_date = VLC_TICK_INVALID;
    sys->length = 0;
}
