#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct window_pane {int dummy; } ;
struct tty {int cy; int sy; int cx; int sx; TYPE_1__* term; } ;
struct TYPE_4__ {int size; int* data; int /*<<< orphan*/  width; } ;
struct grid_cell {int flags; TYPE_2__ data; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int TERM_EARLYWRAP ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,struct grid_cell const*,struct window_pane*) ; 
 struct grid_cell* FUNC1 (struct tty*,struct grid_cell const*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct tty *tty, const struct grid_cell *gc, struct window_pane *wp)
{
	const struct grid_cell	*gcp;

	/* Skip last character if terminal is stupid. */
	if ((tty->term->flags & TERM_EARLYWRAP) &&
	    tty->cy == tty->sy - 1 &&
	    tty->cx == tty->sx - 1)
		return;

	/* If this is a padding character, do nothing. */
	if (gc->flags & GRID_FLAG_PADDING)
		return;

	/* Set the attributes. */
	FUNC0(tty, gc, wp);

	/* Get the cell and if ASCII write with putc to do ACS translation. */
	gcp = FUNC1(tty, gc);
	if (gcp->data.size == 1) {
		if (*gcp->data.data < 0x20 || *gcp->data.data == 0x7f)
			return;
		FUNC2(tty, *gcp->data.data);
		return;
	}

	/* Write the data. */
	FUNC3(tty, gcp->data.data, gcp->data.size, gcp->data.width);
}