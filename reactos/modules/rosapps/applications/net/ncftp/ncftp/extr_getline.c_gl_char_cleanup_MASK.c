#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TCSETA ; 
 int /*<<< orphan*/  TIOCSETN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_termio ; 
 int /*<<< orphan*/  old_termios ; 
 int /*<<< orphan*/  old_tty ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)		/* undo effects of gl_char_init */
{
#ifdef __unix__
#	ifdef HAVE_TERMIOS_H
		tcsetattr(0, TCSANOW, &old_termios);
#	elif defined(TIOCSETN)		/* BSD */
		ioctl(0, TIOCSETN, &old_tty);
#	else			/* SYSV */
		FUNC0(0, TCSETA, &old_termio);
#	endif
#endif /* __unix__ */
}