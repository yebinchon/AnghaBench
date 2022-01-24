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
struct tty {int fd; int /*<<< orphan*/ * mouse_drag_release; int /*<<< orphan*/ * mouse_drag_update; scalar_t__ mouse_drag_flag; int /*<<< orphan*/  flags; int /*<<< orphan*/  term; int /*<<< orphan*/  tio; int /*<<< orphan*/  event_in; struct client* client; } ;
struct termios {int c_iflag; int c_oflag; int c_lflag; int* c_cc; } ;
struct client {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ECHO ; 
 int ECHOCTL ; 
 int ECHOE ; 
 int ECHOKE ; 
 int ECHONL ; 
 int ECHOPRT ; 
 int ICANON ; 
 int ICRNL ; 
 int IEXTEN ; 
 int IGNBRK ; 
 int IGNCR ; 
 int IMAXBEL ; 
 int INLCR ; 
 int ISIG ; 
 int ISTRIP ; 
 int IXOFF ; 
 int IXON ; 
 int OCRNL ; 
 int ONLCR ; 
 int ONLRET ; 
 int OPOST ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TTYC_CLEAR ; 
 int /*<<< orphan*/  TTYC_CNORM ; 
 int /*<<< orphan*/  TTYC_ENACS ; 
 int /*<<< orphan*/  TTYC_KMOUS ; 
 int /*<<< orphan*/  TTYC_SMCUP ; 
 int /*<<< orphan*/  TTYC_SMKX ; 
 int /*<<< orphan*/  TTYC_XT ; 
 int /*<<< orphan*/  TTY_FOCUS ; 
 int /*<<< orphan*/  TTY_STARTED ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct termios*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,struct termios*) ; 
 scalar_t__ FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(struct tty *tty)
{
	struct client	*c = tty->client;
	struct termios	 tio;

	if (tty->fd != -1 && FUNC6(tty->fd, &tty->tio) == 0) {
		FUNC4(tty->fd, 0);
		FUNC0(&tty->event_in, NULL);

		FUNC2(&tio, &tty->tio, sizeof tio);
		tio.c_iflag &= ~(IXON|IXOFF|ICRNL|INLCR|IGNCR|IMAXBEL|ISTRIP);
		tio.c_iflag |= IGNBRK;
		tio.c_oflag &= ~(OPOST|ONLCR|OCRNL|ONLRET);
		tio.c_lflag &= ~(IEXTEN|ICANON|ECHO|ECHOE|ECHONL|ECHOCTL|
		    ECHOPRT|ECHOKE|ISIG);
		tio.c_cc[VMIN] = 1;
		tio.c_cc[VTIME] = 0;
		if (FUNC7(tty->fd, TCSANOW, &tio) == 0)
			FUNC5(tty->fd, TCIOFLUSH);
	}

	FUNC11(tty, TTYC_SMCUP);

	FUNC11(tty, TTYC_SMKX);
	FUNC11(tty, TTYC_CLEAR);

	if (FUNC8(tty)) {
		FUNC1("%s: using capabilities for ACS", c->name);
		FUNC11(tty, TTYC_ENACS);
	} else
		FUNC1("%s: using UTF-8 for ACS", c->name);

	FUNC11(tty, TTYC_CNORM);
	if (FUNC14(tty->term, TTYC_KMOUS))
		FUNC12(tty, "\033[?1000l\033[?1002l\033[?1006l\033[?1005l");

	if (FUNC13(tty->term, TTYC_XT)) {
		if (FUNC3(global_options, "focus-events")) {
			tty->flags |= TTY_FOCUS;
			FUNC12(tty, "\033[?1004h");
		}
		FUNC12(tty, "\033[c");
	}

	tty->flags |= TTY_STARTED;
	FUNC10(tty);

	FUNC9(tty, "");

	tty->mouse_drag_flag = 0;
	tty->mouse_drag_update = NULL;
	tty->mouse_drag_release = NULL;
}