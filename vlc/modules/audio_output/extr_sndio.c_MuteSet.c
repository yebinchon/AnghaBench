
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int mute; int volume; int hdl; } ;
typedef TYPE_2__ aout_sys_t ;


 int sio_setvol (int ,int ) ;

__attribute__((used)) static int MuteSet (audio_output_t *aout, bool mute)
{
    aout_sys_t *sys = aout->sys;

    if (!sio_setvol (sys->hdl, mute ? 0 : sys->volume))
        return -1;

    sys->mute = mute;
    return 0;
}
