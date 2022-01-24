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
typedef  int u_int ;
struct tty_term {int dummy; } ;
struct tty {int sx; int cx; int cy; int rlower; scalar_t__ rleft; int rupper; struct tty_term* term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CUB ; 
 int /*<<< orphan*/  TTYC_CUB1 ; 
 int /*<<< orphan*/  TTYC_CUD ; 
 int /*<<< orphan*/  TTYC_CUD1 ; 
 int /*<<< orphan*/  TTYC_CUF ; 
 int /*<<< orphan*/  TTYC_CUF1 ; 
 int /*<<< orphan*/  TTYC_CUP ; 
 int /*<<< orphan*/  TTYC_CUU ; 
 int /*<<< orphan*/  TTYC_CUU1 ; 
 int /*<<< orphan*/  TTYC_HOME ; 
 int /*<<< orphan*/  TTYC_HPA ; 
 int /*<<< orphan*/  TTYC_VPA ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct tty_term*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 

void
FUNC7(struct tty *tty, u_int cx, u_int cy)
{
	struct tty_term	*term = tty->term;
	u_int		 thisx, thisy;
	int		 change;

	if (cx > tty->sx - 1)
		cx = tty->sx - 1;

	thisx = tty->cx;
	thisy = tty->cy;

	/* No change. */
	if (cx == thisx && cy == thisy)
		return;

	/* Very end of the line, just use absolute movement. */
	if (thisx > tty->sx - 1)
		goto absolute;

	/* Move to home position (0, 0). */
	if (cx == 0 && cy == 0 && FUNC5(term, TTYC_HOME)) {
		FUNC2(tty, TTYC_HOME);
		goto out;
	}

	/* Zero on the next line. */
	if (cx == 0 && cy == thisy + 1 && thisy != tty->rlower &&
	    (!FUNC6(tty) || tty->rleft == 0)) {
		FUNC1(tty, '\r');
		FUNC1(tty, '\n');
		goto out;
	}

	/* Moving column or row. */
	if (cy == thisy) {
		/*
		 * Moving column only, row staying the same.
		 */

		/* To left edge. */
		if (cx == 0 && (!FUNC6(tty) || tty->rleft == 0)) {
			FUNC1(tty, '\r');
			goto out;
		}

		/* One to the left. */
		if (cx == thisx - 1 && FUNC5(term, TTYC_CUB1)) {
			FUNC2(tty, TTYC_CUB1);
			goto out;
		}

		/* One to the right. */
		if (cx == thisx + 1 && FUNC5(term, TTYC_CUF1)) {
			FUNC2(tty, TTYC_CUF1);
			goto out;
		}

		/* Calculate difference. */
		change = thisx - cx;	/* +ve left, -ve right */

		/*
		 * Use HPA if change is larger than absolute, otherwise move
		 * the cursor with CUB/CUF.
		 */
		if ((u_int) FUNC0(change) > cx && FUNC5(term, TTYC_HPA)) {
			FUNC3(tty, TTYC_HPA, cx);
			goto out;
		} else if (change > 0 && FUNC5(term, TTYC_CUB)) {
			if (change == 2 && FUNC5(term, TTYC_CUB1)) {
				FUNC2(tty, TTYC_CUB1);
				FUNC2(tty, TTYC_CUB1);
				goto out;
			}
			FUNC3(tty, TTYC_CUB, change);
			goto out;
		} else if (change < 0 && FUNC5(term, TTYC_CUF)) {
			FUNC3(tty, TTYC_CUF, -change);
			goto out;
		}
	} else if (cx == thisx) {
		/*
		 * Moving row only, column staying the same.
		 */

		/* One above. */
		if (thisy != tty->rupper &&
		    cy == thisy - 1 && FUNC5(term, TTYC_CUU1)) {
			FUNC2(tty, TTYC_CUU1);
			goto out;
		}

		/* One below. */
		if (thisy != tty->rlower &&
		    cy == thisy + 1 && FUNC5(term, TTYC_CUD1)) {
			FUNC2(tty, TTYC_CUD1);
			goto out;
		}

		/* Calculate difference. */
		change = thisy - cy;	/* +ve up, -ve down */

		/*
		 * Try to use VPA if change is larger than absolute or if this
		 * change would cross the scroll region, otherwise use CUU/CUD.
		 */
		if ((u_int) FUNC0(change) > cy ||
		    (change < 0 && cy - change > tty->rlower) ||
		    (change > 0 && cy - change < tty->rupper)) {
			    if (FUNC5(term, TTYC_VPA)) {
				    FUNC3(tty, TTYC_VPA, cy);
				    goto out;
			    }
		} else if (change > 0 && FUNC5(term, TTYC_CUU)) {
			FUNC3(tty, TTYC_CUU, change);
			goto out;
		} else if (change < 0 && FUNC5(term, TTYC_CUD)) {
			FUNC3(tty, TTYC_CUD, -change);
			goto out;
		}
	}

absolute:
	/* Absolute movement. */
	FUNC4(tty, TTYC_CUP, cy, cx);

out:
	tty->cx = cx;
	tty->cy = cy;
}