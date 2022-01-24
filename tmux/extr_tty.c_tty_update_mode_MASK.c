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
struct tty {int flags; int mode; scalar_t__ cstyle; int /*<<< orphan*/  term; int /*<<< orphan*/  ccolour; } ;
struct screen {scalar_t__ cstyle; int /*<<< orphan*/  ccolour; } ;

/* Variables and functions */
 int ALL_MOUSE_MODES ; 
 int MODE_BLINKING ; 
 int MODE_BRACKETPASTE ; 
 int MODE_CURSOR ; 
 int MODE_MOUSE_ALL ; 
 int MODE_MOUSE_BUTTON ; 
 int MODE_MOUSE_STANDARD ; 
 int /*<<< orphan*/  TTYC_CIVIS ; 
 int /*<<< orphan*/  TTYC_CNORM ; 
 int /*<<< orphan*/  TTYC_CVVIS ; 
 int /*<<< orphan*/  TTYC_SE ; 
 int /*<<< orphan*/  TTYC_SS ; 
 int TTY_NOCURSOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct tty *tty, int mode, struct screen *s)
{
	int	changed;

	if (s != NULL && FUNC0(s->ccolour, tty->ccolour) != 0)
		FUNC1(tty, s->ccolour);

	if (tty->flags & TTY_NOCURSOR)
		mode &= ~MODE_CURSOR;

	changed = mode ^ tty->mode;
	if (changed & MODE_BLINKING) {
		if (FUNC5(tty->term, TTYC_CVVIS))
			FUNC2(tty, TTYC_CVVIS);
		else
			FUNC2(tty, TTYC_CNORM);
		changed |= MODE_CURSOR;
	}
	if (changed & MODE_CURSOR) {
		if (mode & MODE_CURSOR)
			FUNC2(tty, TTYC_CNORM);
		else
			FUNC2(tty, TTYC_CIVIS);
	}
	if (s != NULL && tty->cstyle != s->cstyle) {
		if (FUNC5(tty->term, TTYC_SS)) {
			if (s->cstyle == 0 &&
			    FUNC5(tty->term, TTYC_SE))
				FUNC2(tty, TTYC_SE);
			else
				FUNC3(tty, TTYC_SS, s->cstyle);
		}
		tty->cstyle = s->cstyle;
	}
	if (changed & ALL_MOUSE_MODES) {
		if (mode & ALL_MOUSE_MODES) {
			/*
			 * Enable the SGR (1006) extension unconditionally, as
			 * it is safe from misinterpretation.
			 */
			FUNC4(tty, "\033[?1006h");
			if (mode & MODE_MOUSE_ALL)
				FUNC4(tty, "\033[?1003h");
			else if (mode & MODE_MOUSE_BUTTON)
				FUNC4(tty, "\033[?1002h");
			else if (mode & MODE_MOUSE_STANDARD)
				FUNC4(tty, "\033[?1000h");
		} else {
			if (tty->mode & MODE_MOUSE_ALL)
				FUNC4(tty, "\033[?1003l");
			else if (tty->mode & MODE_MOUSE_BUTTON)
				FUNC4(tty, "\033[?1002l");
			else if (tty->mode & MODE_MOUSE_STANDARD)
				FUNC4(tty, "\033[?1000l");
			FUNC4(tty, "\033[?1006l");
		}
	}
	if (changed & MODE_BRACKETPASTE) {
		if (mode & MODE_BRACKETPASTE)
			FUNC4(tty, "\033[?2004h");
		else
			FUNC4(tty, "\033[?2004l");
	}
	tty->mode = mode;
}