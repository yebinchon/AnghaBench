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
struct grid_cell {scalar_t__ fg; scalar_t__ bg; scalar_t__ us; } ;
struct tty {int /*<<< orphan*/  term; struct grid_cell cell; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TTYC_AX ; 
 int /*<<< orphan*/  TTYC_OP ; 
 int /*<<< orphan*/  TTYC_SETAB ; 
 int /*<<< orphan*/  TTYC_SETAF ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct grid_cell const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct grid_cell const*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,struct grid_cell const*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct tty *tty, const struct grid_cell *gc)
{
	struct grid_cell	*tc = &tty->cell;
	int			 have_ax;

	/* No changes? Nothing is necessary. */
	if (gc->fg == tc->fg && gc->bg == tc->bg && gc->us == tc->us)
		return;

	/*
	 * Is either the default colour? This is handled specially because the
	 * best solution might be to reset both colours to default, in which
	 * case if only one is default need to fall onward to set the other
	 * colour.
	 */
	if (FUNC0(gc->fg) || FUNC0(gc->bg)) {
		/*
		 * If don't have AX but do have op, send sgr0 (op can't
		 * actually be used because it is sometimes the same as sgr0
		 * and sometimes isn't). This resets both colours to default.
		 *
		 * Otherwise, try to set the default colour only as needed.
		 */
		have_ax = FUNC7(tty->term, TTYC_AX);
		if (!have_ax && FUNC8(tty->term, TTYC_OP))
			FUNC6(tty);
		else {
			if (FUNC0(gc->fg) && !FUNC0(tc->fg)) {
				if (have_ax)
					FUNC5(tty, "\033[39m");
				else if (tc->fg != 7)
					FUNC4(tty, TTYC_SETAF, 7);
				tc->fg = gc->fg;
			}
			if (FUNC0(gc->bg) && !FUNC0(tc->bg)) {
				if (have_ax)
					FUNC5(tty, "\033[49m");
				else if (tc->bg != 0)
					FUNC4(tty, TTYC_SETAB, 0);
				tc->bg = gc->bg;
			}
		}
	}

	/* Set the foreground colour. */
	if (!FUNC0(gc->fg) && gc->fg != tc->fg)
		FUNC2(tty, gc);

	/*
	 * Set the background colour. This must come after the foreground as
	 * tty_colour_fg() can call tty_reset().
	 */
	if (!FUNC0(gc->bg) && gc->bg != tc->bg)
		FUNC1(tty, gc);

	/* Set the underscore color. */
	if (gc->us != tc->us)
		FUNC3(tty, gc);
}