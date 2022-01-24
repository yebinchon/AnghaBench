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
struct tty {int flags; int /*<<< orphan*/  timer; int /*<<< orphan*/ * out; int /*<<< orphan*/  fd; int /*<<< orphan*/  event_out; int /*<<< orphan*/ * in; int /*<<< orphan*/  event_in; int /*<<< orphan*/ * term; int /*<<< orphan*/  term_name; } ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int TTY_BLOCK ; 
 int TTY_FREEZE ; 
 int TTY_NOCURSOR ; 
 int TTY_OPENED ; 
 int TTY_TIMER ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  tty_read_callback ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  tty_timer_callback ; 
 int /*<<< orphan*/  tty_write_callback ; 

int
FUNC8(struct tty *tty, char **cause)
{
	tty->term = FUNC7(tty->term_name, tty->fd, cause);
	if (tty->term == NULL) {
		FUNC4(tty);
		return (-1);
	}
	tty->flags |= TTY_OPENED;

	tty->flags &= ~(TTY_NOCURSOR|TTY_FREEZE|TTY_BLOCK|TTY_TIMER);

	FUNC1(&tty->event_in, tty->fd, EV_PERSIST|EV_READ,
	    tty_read_callback, tty);
	tty->in = FUNC0();
	if (tty->in == NULL)
		FUNC3("out of memory");

	FUNC1(&tty->event_out, tty->fd, EV_WRITE, tty_write_callback, tty);
	tty->out = FUNC0();
	if (tty->out == NULL)
		FUNC3("out of memory");

	FUNC2(&tty->timer, tty_timer_callback, tty);

	FUNC6(tty);

	FUNC5(tty);

	return (0);
}