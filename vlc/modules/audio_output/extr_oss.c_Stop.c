
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ aout_sys_t ;


 int SNDCTL_DSP_HALT ;
 int ioctl (int,int ,int *) ;
 int vlc_close (int) ;

__attribute__((used)) static void Stop (audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    int fd = sys->fd;

    ioctl (fd, SNDCTL_DSP_HALT, ((void*)0));
    vlc_close (fd);
    sys->fd = -1;
}
