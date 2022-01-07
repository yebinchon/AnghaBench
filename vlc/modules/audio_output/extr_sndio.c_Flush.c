
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int hdl; scalar_t__ delay; scalar_t__ started; } ;
typedef TYPE_2__ aout_sys_t ;


 int sio_start (int ) ;
 int sio_stop (int ) ;

__attribute__((used)) static void Flush (audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;

    sio_stop (sys->hdl);
    sys->started = 0;
    sys->delay = 0;
    sio_start (sys->hdl);
}
