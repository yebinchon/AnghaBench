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
struct tty {int flags; int fd; int /*<<< orphan*/  term; int /*<<< orphan*/  event_out; int /*<<< orphan*/  out; int /*<<< orphan*/  event_in; int /*<<< orphan*/  in; int /*<<< orphan*/  key_timer; } ;

/* Variables and functions */
 int TTY_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct tty *tty)
{
	if (FUNC3(&tty->key_timer))
		FUNC4(&tty->key_timer);
	FUNC6(tty);

	if (tty->flags & TTY_OPENED) {
		FUNC1(tty->in);
		FUNC2(&tty->event_in);
		FUNC1(tty->out);
		FUNC2(&tty->event_out);

		FUNC7(tty->term);
		FUNC5(tty);

		tty->flags &= ~TTY_OPENED;
	}

	if (tty->fd != -1) {
		FUNC0(tty->fd);
		tty->fd = -1;
	}
}