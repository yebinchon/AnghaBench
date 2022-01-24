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
struct window_pane {int flags; scalar_t__ id; } ;
struct grid_cell {scalar_t__ attr; scalar_t__ fg; scalar_t__ bg; scalar_t__ us; } ;
struct tty {int last_wp; int /*<<< orphan*/  term; struct grid_cell last_cell; struct grid_cell cell; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int GRID_ATTR_ALL_UNDERSCORE ; 
 int GRID_ATTR_BLINK ; 
 int GRID_ATTR_BRIGHT ; 
 int GRID_ATTR_CHARSET ; 
 int GRID_ATTR_DIM ; 
 int GRID_ATTR_HIDDEN ; 
 int GRID_ATTR_ITALICS ; 
 int GRID_ATTR_OVERLINE ; 
 int GRID_ATTR_REVERSE ; 
 int GRID_ATTR_STRIKETHROUGH ; 
 int GRID_ATTR_UNDERSCORE ; 
 int GRID_ATTR_UNDERSCORE_2 ; 
 int GRID_ATTR_UNDERSCORE_3 ; 
 int GRID_ATTR_UNDERSCORE_4 ; 
 int GRID_ATTR_UNDERSCORE_5 ; 
 int PANE_STYLECHANGED ; 
 int /*<<< orphan*/  TTYC_BLINK ; 
 int /*<<< orphan*/  TTYC_BOLD ; 
 int /*<<< orphan*/  TTYC_DIM ; 
 int /*<<< orphan*/  TTYC_INVIS ; 
 int /*<<< orphan*/  TTYC_REV ; 
 int /*<<< orphan*/  TTYC_SETAB ; 
 int /*<<< orphan*/  TTYC_SMACS ; 
 int /*<<< orphan*/  TTYC_SMOL ; 
 int /*<<< orphan*/  TTYC_SMSO ; 
 int /*<<< orphan*/  TTYC_SMUL ; 
 int /*<<< orphan*/  TTYC_SMULX ; 
 int /*<<< orphan*/  TTYC_SMXX ; 
 int /*<<< orphan*/  FUNC1 (struct grid_cell*,struct grid_cell const*,int) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,struct window_pane*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,struct window_pane*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,struct window_pane*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC7 (struct grid_cell*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(struct tty *tty, const struct grid_cell *gc,
    struct window_pane *wp)
{
	struct grid_cell	*tc = &tty->cell, gc2;
	int			 changed;

	/* Ignore cell if it is the same as the last one. */
	if (wp != NULL &&
	    (int)wp->id == tty->last_wp &&
	    ~(wp->flags & PANE_STYLECHANGED) &&
	    gc->attr == tty->last_cell.attr &&
	    gc->fg == tty->last_cell.fg &&
	    gc->bg == tty->last_cell.bg &&
	    gc->us == tty->last_cell.us)
		return;
	tty->last_wp = (wp != NULL ? (int)wp->id : -1);
	FUNC1(&tty->last_cell, gc, sizeof tty->last_cell);

	/* Copy cell and update default colours. */
	FUNC1(&gc2, gc, sizeof gc2);
	if (wp != NULL)
		FUNC7(&gc2, wp);

	/*
	 * If no setab, try to use the reverse attribute as a best-effort for a
	 * non-default background. This is a bit of a hack but it doesn't do
	 * any serious harm and makes a couple of applications happier.
	 */
	if (!FUNC12(tty->term, TTYC_SETAB)) {
		if (gc2.attr & GRID_ATTR_REVERSE) {
			if (gc2.fg != 7 && !FUNC0(gc2.fg))
				gc2.attr &= ~GRID_ATTR_REVERSE;
		} else {
			if (gc2.bg != 0 && !FUNC0(gc2.bg))
				gc2.attr |= GRID_ATTR_REVERSE;
		}
	}

	/* Fix up the colours if necessary. */
	FUNC4(tty, wp, &gc2);
	FUNC3(tty, wp, &gc2);
	FUNC5(tty, wp, &gc2);

	/*
	 * If any bits are being cleared or the underline colour is now default,
	 * reset everything.
	 */
	if ((tc->attr & ~gc2.attr) || (tc->us != gc2.us && gc2.us == 0))
		FUNC10(tty);

	/*
	 * Set the colours. This may call tty_reset() (so it comes next) and
	 * may add to (NOT remove) the desired attributes.
	 */
	FUNC6(tty, &gc2);

	/* Filter out attribute bits already set. */
	changed = gc2.attr & ~tc->attr;
	tc->attr = gc2.attr;

	/* Set the attributes. */
	if (changed & GRID_ATTR_BRIGHT)
		FUNC8(tty, TTYC_BOLD);
	if (changed & GRID_ATTR_DIM)
		FUNC8(tty, TTYC_DIM);
	if (changed & GRID_ATTR_ITALICS)
		FUNC11(tty);
	if (changed & GRID_ATTR_ALL_UNDERSCORE) {
		if ((changed & GRID_ATTR_UNDERSCORE) ||
		    !FUNC12(tty->term, TTYC_SMULX))
			FUNC8(tty, TTYC_SMUL);
		else if (changed & GRID_ATTR_UNDERSCORE_2)
			FUNC9(tty, TTYC_SMULX, 2);
		else if (changed & GRID_ATTR_UNDERSCORE_3)
			FUNC9(tty, TTYC_SMULX, 3);
		else if (changed & GRID_ATTR_UNDERSCORE_4)
			FUNC9(tty, TTYC_SMULX, 4);
		else if (changed & GRID_ATTR_UNDERSCORE_5)
			FUNC9(tty, TTYC_SMULX, 5);
	}
	if (changed & GRID_ATTR_BLINK)
		FUNC8(tty, TTYC_BLINK);
	if (changed & GRID_ATTR_REVERSE) {
		if (FUNC12(tty->term, TTYC_REV))
			FUNC8(tty, TTYC_REV);
		else if (FUNC12(tty->term, TTYC_SMSO))
			FUNC8(tty, TTYC_SMSO);
	}
	if (changed & GRID_ATTR_HIDDEN)
		FUNC8(tty, TTYC_INVIS);
	if (changed & GRID_ATTR_STRIKETHROUGH)
		FUNC8(tty, TTYC_SMXX);
	if (changed & GRID_ATTR_OVERLINE)
		FUNC8(tty, TTYC_SMOL);
	if ((changed & GRID_ATTR_CHARSET) && FUNC2(tty))
		FUNC8(tty, TTYC_SMACS);
}