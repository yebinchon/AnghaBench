
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int tty; int old_termios; int sig_usr2; int sig_usr1; int vt_mode; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int SIGUSR1 ;
 int SIGUSR2 ;
 int TextMode (int ) ;
 int VT_SETMODE ;
 int ioctl (int ,int ,int *) ;
 int sigaction (int ,int *,int *) ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void TtyExit(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;


    ioctl(sys->tty, VT_SETMODE, &sys->vt_mode);
    tcsetattr(0, 0, &sys->old_termios);


    TextMode(sys->tty);
}
