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
typedef  scalar_t__ u_int ;
struct utf8_data {scalar_t__ size; } ;
struct grid_line {int flags; } ;
struct grid_cell {int flags; int /*<<< orphan*/  data; } ;
struct grid {scalar_t__ hsize; int sy; struct grid_line* linedata; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int GRID_LINE_WRAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct utf8_data*) ; 
 int /*<<< orphan*/  global_s_options ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ; 
 scalar_t__ FUNC2 (struct grid*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct utf8_data*,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct utf8_data*) ; 
 struct utf8_data* FUNC7 (struct utf8_data*,size_t,int) ; 

char *
FUNC8(struct grid *gd, u_int x, u_int y)
{
	struct grid_line	*gl;
	struct grid_cell	 gc;
	const char		*ws;
	struct utf8_data	*ud = NULL;
	u_int			 end;
	size_t			 size = 0;
	int			 found = 0;
	char			*s = NULL;

	ws = FUNC4(global_s_options, "word-separators");

	y = gd->hsize + y;
	for (;;) {
		FUNC1(gd, x, y, &gc);
		if (gc.flags & GRID_FLAG_PADDING)
			break;
		if (FUNC5(ws, &gc.data)) {
			found = 1;
			break;
		}

		if (x == 0) {
			if (y == 0)
				break;
			gl = &gd->linedata[y - 1];
			if (~gl->flags & GRID_LINE_WRAPPED)
				break;
			y--;
			x = FUNC2(gd, y);
			if (x == 0)
				break;
		}
		x--;
	}
	for (;;) {
		if (found) {
			end = FUNC2(gd, y);
			if (end == 0 || x == end - 1) {
				if (y == gd->hsize + gd->sy - 1)
					break;
				gl = &gd->linedata[y];
				if (~gl->flags & GRID_LINE_WRAPPED)
					break;
				y++;
				x = 0;
			} else
				x++;
		}
		found = 1;

		FUNC1(gd, x, y, &gc);
		if (gc.flags & GRID_FLAG_PADDING)
			break;
		if (FUNC5(ws, &gc.data))
			break;

		ud = FUNC7(ud, size + 2, sizeof *ud);
		FUNC3(&ud[size++], &gc.data, sizeof *ud);
	}
	if (size != 0) {
		ud[size].size = 0;
		s = FUNC6(ud);
		FUNC0(ud);
	}
	return (s);
}