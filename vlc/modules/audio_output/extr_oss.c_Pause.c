
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ aout_sys_t ;


 int SNDCTL_DSP_SILENCE ;
 int SNDCTL_DSP_SKIP ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void Pause (audio_output_t *aout, bool pause, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    int fd = sys->fd;

    (void) date;
    ioctl (fd, pause ? SNDCTL_DSP_SILENCE : SNDCTL_DSP_SKIP, ((void*)0));
}
