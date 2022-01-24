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
struct grid_cell {int bg; } ;
struct tty {int term_flags; struct grid_cell cell; } ;

/* Variables and functions */
 int COLOUR_FLAG_256 ; 
 int COLOUR_FLAG_RGB ; 
 int TERM_256COLOURS ; 
 int /*<<< orphan*/  TTYC_SETAB ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,char*) ; 
 scalar_t__ FUNC2 (struct tty*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct tty *tty, const struct grid_cell *gc)
{
	struct grid_cell	*tc = &tty->cell;
	char			 s[32];

	/* Is this a 24-bit or 256-colour colour? */
	if (gc->bg & COLOUR_FLAG_RGB || gc->bg & COLOUR_FLAG_256) {
		if (FUNC2(tty, gc->bg, "48") == 0)
			goto save_bg;
		/* Should not get here, already converted in tty_check_bg. */
		return;
	}

	/* Is this an aixterm bright colour? */
	if (gc->bg >= 90 && gc->bg <= 97) {
		if (tty->term_flags & TERM_256COLOURS) {
			FUNC3(s, sizeof s, "\033[%dm", gc->bg + 10);
			FUNC1(tty, s);
		} else
			FUNC0(tty, TTYC_SETAB, gc->bg - 90 + 8);
		goto save_bg;
	}

	/* Otherwise set the background colour. */
	FUNC0(tty, TTYC_SETAB, gc->bg);

save_bg:
	/* Save the new values in the terminal current cell. */
	tc->bg = gc->bg;
}