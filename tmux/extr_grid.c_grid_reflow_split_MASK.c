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
struct grid_line {size_t cellused; int flags; size_t cellsize; } ;
struct TYPE_2__ {size_t width; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {size_t sy; size_t hscrolled; struct grid_line* linedata; } ;

/* Variables and functions */
 int GRID_LINE_EXTENDED ; 
 int GRID_LINE_WRAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct grid_line*,size_t,struct grid_cell*) ; 
 struct grid_line* FUNC1 (struct grid*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct grid_line*) ; 
 int /*<<< orphan*/  FUNC3 (struct grid*,struct grid*,size_t,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct grid*,size_t,size_t,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC5 (struct grid_line*,struct grid_line*,int) ; 

__attribute__((used)) static void
FUNC6(struct grid *target, struct grid *gd, u_int sx, u_int yy,
    u_int at)
{
	struct grid_line	*gl = &gd->linedata[yy], *first;
	struct grid_cell	 gc;
	u_int			 line, lines, width, i, xx;
	u_int			 used = gl->cellused;
	int			 flags = gl->flags;

	/* How many lines do we need to insert? We know we need at least two. */
	if (~gl->flags & GRID_LINE_EXTENDED)
		lines = 1 + (gl->cellused - 1) / sx;
	else {
		lines = 2;
		width = 0;
		for (i = at; i < used; i++) {
			FUNC0(gl, i, &gc);
			if (width + gc.data.width > sx) {
				lines++;
				width = 0;
			}
			width += gc.data.width;
		}
	}

	/* Insert new lines. */
	line = target->sy + 1;
	first = FUNC1(target, lines);

	/* Copy sections from the original line. */
	width = 0;
	xx = 0;
	for (i = at; i < used; i++) {
		FUNC0(gl, i, &gc);
		if (width + gc.data.width > sx) {
			target->linedata[line].flags |= GRID_LINE_WRAPPED;

			line++;
			width = 0;
			xx = 0;
		}
		width += gc.data.width;
		FUNC4(target, xx, line, &gc);
		xx++;
	}
	if (flags & GRID_LINE_WRAPPED)
		target->linedata[line].flags |= GRID_LINE_WRAPPED;

	/* Move the remainder of the original line. */
	gl->cellsize = gl->cellused = at;
	gl->flags |= GRID_LINE_WRAPPED;
	FUNC5(first, gl, sizeof *first);
	FUNC2(gl);

	/* Adjust the scroll position. */
	if (yy <= gd->hscrolled)
		gd->hscrolled += lines - 1;

	/*
	 * If the original line had the wrapped flag and there is still space
	 * in the last new line, try to join with the next lines.
	 */
	if (width < sx && (flags & GRID_LINE_WRAPPED))
		FUNC3(target, gd, sx, yy, width, 1);
}