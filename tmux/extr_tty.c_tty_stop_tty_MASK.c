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
struct winsize {scalar_t__ ws_row; } ;
struct tty {int flags; scalar_t__ cstyle; int mode; int /*<<< orphan*/  fd; int /*<<< orphan*/  term; int /*<<< orphan*/  tio; int /*<<< orphan*/  event_out; int /*<<< orphan*/  event_in; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int MODE_BRACKETPASTE ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  TTYC_CLEAR ; 
 int /*<<< orphan*/  TTYC_CNORM ; 
 int /*<<< orphan*/  TTYC_CR ; 
 int /*<<< orphan*/  TTYC_CSR ; 
 int /*<<< orphan*/  TTYC_KMOUS ; 
 int /*<<< orphan*/  TTYC_RMACS ; 
 int /*<<< orphan*/  TTYC_RMCUP ; 
 int /*<<< orphan*/  TTYC_RMKX ; 
 int /*<<< orphan*/  TTYC_SE ; 
 int /*<<< orphan*/  TTYC_SGR0 ; 
 int /*<<< orphan*/  TTYC_SS ; 
 int /*<<< orphan*/  TTYC_XT ; 
 int TTY_BLOCK ; 
 int TTY_FOCUS ; 
 int TTY_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (struct tty*) ; 

void
FUNC12(struct tty *tty)
{
	struct winsize	ws;

	if (!(tty->flags & TTY_STARTED))
		return;
	tty->flags &= ~TTY_STARTED;

	FUNC0(&tty->timer);
	tty->flags &= ~TTY_BLOCK;

	FUNC0(&tty->event_in);
	FUNC0(&tty->event_out);

	/*
	 * Be flexible about error handling and try not kill the server just
	 * because the fd is invalid. Things like ssh -t can easily leave us
	 * with a dead tty.
	 */
	if (FUNC1(tty->fd, TIOCGWINSZ, &ws) == -1)
		return;
	if (FUNC3(tty->fd, TCSANOW, &tty->tio) == -1)
		return;

	FUNC5(tty, FUNC10(tty->term, TTYC_CSR, 0, ws.ws_row - 1));
	if (FUNC4(tty))
		FUNC5(tty, FUNC8(tty->term, TTYC_RMACS));
	FUNC5(tty, FUNC8(tty->term, TTYC_SGR0));
	FUNC5(tty, FUNC8(tty->term, TTYC_RMKX));
	FUNC5(tty, FUNC8(tty->term, TTYC_CLEAR));
	if (FUNC7(tty->term, TTYC_SS) && tty->cstyle != 0) {
		if (FUNC7(tty->term, TTYC_SE))
			FUNC5(tty, FUNC8(tty->term, TTYC_SE));
		else
			FUNC5(tty, FUNC9(tty->term, TTYC_SS, 0));
	}
	if (tty->mode & MODE_BRACKETPASTE)
		FUNC5(tty, "\033[?2004l");
	FUNC5(tty, FUNC8(tty->term, TTYC_CR));

	FUNC5(tty, FUNC8(tty->term, TTYC_CNORM));
	if (FUNC7(tty->term, TTYC_KMOUS))
		FUNC5(tty, "\033[?1000l\033[?1002l\033[?1006l\033[?1005l");

	if (FUNC6(tty->term, TTYC_XT)) {
		if (tty->flags & TTY_FOCUS) {
			tty->flags &= ~TTY_FOCUS;
			FUNC5(tty, "\033[?1004l");
		}
	}

	if (FUNC11(tty))
		FUNC5(tty, "\033[?69l"); /* DECLRMM */
	FUNC5(tty, FUNC8(tty->term, TTYC_RMCUP));

	FUNC2(tty->fd, 1);
}