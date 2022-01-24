#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_5__ {int /*<<< orphan*/  tty; int /*<<< orphan*/  old_termios; int /*<<< orphan*/  sig_usr2; int /*<<< orphan*/  sig_usr1; int /*<<< orphan*/  vt_mode; } ;
typedef  TYPE_2__ vout_display_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_SETMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    /* Reset the terminal */
    FUNC1(sys->tty, VT_SETMODE, &sys->vt_mode);

#if 0
    /* Remove signal handlers */
    sigaction(SIGUSR1, &sys->sig_usr1, NULL);
    sigaction(SIGUSR2, &sys->sig_usr2, NULL);
#endif

    /* Reset the keyboard state */
    FUNC3(0, 0, &sys->old_termios);

    /* Return to text mode */
    FUNC0(sys->tty);
}