#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct termios {int c_lflag; int* c_cc; scalar_t__ c_iflag; } ;
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct vt_mode {void* acqsig; void* relsig; scalar_t__ waitv; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  tty; struct termios old_termios; struct sigaction sig_usr2; struct sigaction sig_usr1; struct vt_mode vt_mode; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  sig_tty ;

/* Variables and functions */
 int ECHO ; 
 int ECHOCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ICANON ; 
 void* SIGUSR1 ; 
 void* SIGUSR2 ; 
 int /*<<< orphan*/  SwitchDisplay ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 size_t VMIN ; 
 size_t VTIME ; 
 struct vt_mode* VT_ACKACQ ; 
 int /*<<< orphan*/  VT_GETMODE ; 
 int /*<<< orphan*/  VT_PROCESS ; 
 int /*<<< orphan*/  VT_RELDISP ; 
 int /*<<< orphan*/  VT_SETMODE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vt_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC5 (void*,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    struct termios new_termios;

    FUNC0(sys->tty);

    /* Set keyboard settings */
    if (FUNC7(0, &sys->old_termios) == -1) {
        FUNC4(vd, "tcgetattr failed");
    }

    if (FUNC7(0, &new_termios) == -1) {
        FUNC4(vd, "tcgetattr failed");
    }

    /* new_termios.c_lflag &= ~ (ICANON | ISIG);
    new_termios.c_lflag |= (ECHO | ECHOCTL); */
    new_termios.c_lflag &= ~ (ICANON);
    new_termios.c_lflag &= ~(ECHO | ECHOCTL);
    new_termios.c_iflag = 0;
    new_termios.c_cc[VMIN] = 1;
    new_termios.c_cc[VTIME] = 0;

    if (FUNC8(0, TCSAFLUSH, &new_termios) == -1) {
        FUNC4(vd, "tcsetattr failed");
    }

    FUNC2(sys->tty, VT_RELDISP, VT_ACKACQ);

#if 0
    /* Set-up tty signal handler to be aware of tty changes */
    struct sigaction sig_tty;
    memset(&sig_tty, 0, sizeof(sig_tty));
    sig_tty.sa_handler = SwitchDisplay;
    sigemptyset(&sig_tty.sa_mask);
    if (sigaction(SIGUSR1, &sig_tty, &sys->sig_usr1) ||
        sigaction(SIGUSR2, &sig_tty, &sys->sig_usr2)) {
        msg_Err(vd, "cannot set signal handler (%s)", vlc_strerror_c(errno));
        /* FIXME SIGUSR1 could have succeed */
        goto error_signal;
    }
#endif

    /* Set-up tty according to new signal handler */
    if (-1 == FUNC2(sys->tty, VT_GETMODE, &sys->vt_mode)) {
        FUNC4(vd, "cannot get terminal mode (%s)", FUNC9(errno));
        goto error;
    }
    struct vt_mode vt_mode = sys->vt_mode;
    vt_mode.mode   = VT_PROCESS;
    vt_mode.waitv  = 0;
    vt_mode.relsig = SIGUSR1;
    vt_mode.acqsig = SIGUSR2;

    if (-1 == FUNC2(sys->tty, VT_SETMODE, &vt_mode)) {
        FUNC4(vd, "cannot set terminal mode (%s)", FUNC9(errno));
        goto error;
    }
    return VLC_SUCCESS;

error:
#if 0
    sigaction(SIGUSR1, &sys->sig_usr1, NULL);
    sigaction(SIGUSR2, &sys->sig_usr2, NULL);
error_signal:
#endif
    FUNC8(0, 0, &sys->old_termios);
    FUNC1(sys->tty);
    return VLC_EGENERIC;
}