#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct grid_line {size_t cellused; int flags; size_t cellsize; int /*<<< orphan*/  extddata; int /*<<< orphan*/  celldata; } ;
struct TYPE_2__ {size_t width; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {size_t sy; size_t hsize; size_t hscrolled; struct grid_line* linedata; } ;

/* Variables and functions */
 int GRID_LINE_WRAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grid_line*,size_t,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC2 (struct grid*,int /*<<< orphan*/ ,size_t,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct grid_line*) ; 
 struct grid_line* FUNC4 (struct grid*,struct grid_line*) ; 
 int /*<<< orphan*/  FUNC5 (struct grid*,size_t,size_t,struct grid_cell*) ; 

__attribute__((used)) static void
FUNC6(struct grid *target, struct grid *gd, u_int sx, u_int yy,
    u_int width, int already)
{
	struct grid_line	*gl, *from = NULL;
	struct grid_cell	 gc;
	u_int			 lines, left, i, to, line, want = 0;
	u_int			 at;
	int			 wrapped = 1;

	/*
	 * Add a new target line.
	 */
	if (!already) {
		to = target->sy;
		gl = FUNC4(target, &gd->linedata[yy]);
	} else {
		to = target->sy - 1;
		gl = &target->linedata[to];
	}
	at = gl->cellused;

	/*
	 * Loop until no more to consume or the target line is full.
	 */
	lines = 0;
	for (;;) {
		/*
		 * If this is now the last line, there is nothing more to be
		 * done.
		 */
		if (yy + 1 + lines == gd->hsize + gd->sy)
			break;
		line = yy + 1 + lines;

		/* If the next line is empty, skip it. */
		if (~gd->linedata[line].flags & GRID_LINE_WRAPPED)
			wrapped = 0;
		if (gd->linedata[line].cellused == 0) {
			if (!wrapped)
				break;
			lines++;
			continue;
		}

		/*
		 * Is the destination line now full? Copy the first character
		 * separately because we need to leave "from" set to the last
		 * line if this line is full.
		 */
		FUNC1(&gd->linedata[line], 0, &gc);
		if (width + gc.data.width > sx)
			break;
		width += gc.data.width;
		FUNC5(target, at, to, &gc);
		at++;

		/* Join as much more as possible onto the current line. */
		from = &gd->linedata[line];
		for (want = 1; want < from->cellused; want++) {
			FUNC1(from, want, &gc);
			if (width + gc.data.width > sx)
				break;
			width += gc.data.width;

			FUNC5(target, at, to, &gc);
			at++;
		}
		lines++;

		/*
		 * If this line wasn't wrapped or we didn't consume the entire
		 * line, don't try to join any further lines.
		 */
		if (!wrapped || want != from->cellused || width == sx)
			break;
	}
	if (lines == 0)
		return;

	/*
	 * If we didn't consume the entire final line, then remove what we did
	 * consume. If we consumed the entire line and it wasn't wrapped,
	 * remove the wrap flag from this line.
	 */
	left = from->cellused - want;
	if (left != 0) {
		FUNC2(gd, 0, want, yy + lines, left, 8);
		from->cellsize = from->cellused = left;
		lines--;
	} else if (!wrapped)
		gl->flags &= ~GRID_LINE_WRAPPED;

	/* Remove the lines that were completely consumed. */
	for (i = yy + 1; i < yy + 1 + lines; i++) {
		FUNC0(gd->linedata[i].celldata);
		FUNC0(gd->linedata[i].extddata);
		FUNC3(&gd->linedata[i]);
	}

	/* Adjust scroll position. */
	if (gd->hscrolled > to + lines)
		gd->hscrolled -= lines;
	else if (gd->hscrolled > to)
		gd->hscrolled = to;
}