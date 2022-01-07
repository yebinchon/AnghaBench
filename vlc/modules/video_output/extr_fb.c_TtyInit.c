
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct termios {int c_lflag; int* c_cc; scalar_t__ c_iflag; } ;
struct sigaction {int sa_mask; int sa_handler; } ;
struct vt_mode {void* acqsig; void* relsig; scalar_t__ waitv; int mode; } ;
struct TYPE_6__ {int tty; struct termios old_termios; struct sigaction sig_usr2; struct sigaction sig_usr1; struct vt_mode vt_mode; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int sig_tty ;


 int ECHO ;
 int ECHOCTL ;
 int GfxMode (int ) ;
 int ICANON ;
 void* SIGUSR1 ;
 void* SIGUSR2 ;
 int SwitchDisplay ;
 int TCSAFLUSH ;
 int TextMode (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 size_t VMIN ;
 size_t VTIME ;
 struct vt_mode* VT_ACKACQ ;
 int VT_GETMODE ;
 int VT_PROCESS ;
 int VT_RELDISP ;
 int VT_SETMODE ;
 int errno ;
 int ioctl (int ,int ,struct vt_mode*) ;
 int memset (struct sigaction*,int ,int) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 scalar_t__ sigaction (void*,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int TtyInit(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    struct termios new_termios;

    GfxMode(sys->tty);


    if (tcgetattr(0, &sys->old_termios) == -1) {
        msg_Err(vd, "tcgetattr failed");
    }

    if (tcgetattr(0, &new_termios) == -1) {
        msg_Err(vd, "tcgetattr failed");
    }



    new_termios.c_lflag &= ~ (ICANON);
    new_termios.c_lflag &= ~(ECHO | ECHOCTL);
    new_termios.c_iflag = 0;
    new_termios.c_cc[VMIN] = 1;
    new_termios.c_cc[VTIME] = 0;

    if (tcsetattr(0, TCSAFLUSH, &new_termios) == -1) {
        msg_Err(vd, "tcsetattr failed");
    }

    ioctl(sys->tty, VT_RELDISP, VT_ACKACQ);
    if (-1 == ioctl(sys->tty, VT_GETMODE, &sys->vt_mode)) {
        msg_Err(vd, "cannot get terminal mode (%s)", vlc_strerror_c(errno));
        goto error;
    }
    struct vt_mode vt_mode = sys->vt_mode;
    vt_mode.mode = VT_PROCESS;
    vt_mode.waitv = 0;
    vt_mode.relsig = SIGUSR1;
    vt_mode.acqsig = SIGUSR2;

    if (-1 == ioctl(sys->tty, VT_SETMODE, &vt_mode)) {
        msg_Err(vd, "cannot set terminal mode (%s)", vlc_strerror_c(errno));
        goto error;
    }
    return VLC_SUCCESS;

error:





    tcsetattr(0, 0, &sys->old_termios);
    TextMode(sys->tty);
    return VLC_EGENERIC;
}
