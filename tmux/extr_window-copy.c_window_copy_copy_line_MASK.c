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
typedef  scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {TYPE_1__* backing; } ;
struct utf8_data {int size; char* data; } ;
struct grid_line {int flags; scalar_t__ cellsize; } ;
struct grid_cell {int flags; int attr; int /*<<< orphan*/  data; } ;
struct grid {scalar_t__ sx; } ;
struct TYPE_2__ {struct grid* grid; } ;

/* Variables and functions */
 int GRID_ATTR_CHARSET ; 
 int GRID_FLAG_PADDING ; 
 int GRID_LINE_WRAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ; 
 struct grid_line* FUNC1 (struct grid*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (struct utf8_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct window_mode_entry*,scalar_t__) ; 
 char* FUNC7 (char*,size_t) ; 

__attribute__((used)) static void
FUNC8(struct window_mode_entry *wme, char **buf, size_t *off,
    u_int sy, u_int sx, u_int ex)
{
	struct window_copy_mode_data	*data = wme->data;
	struct grid			*gd = data->backing->grid;
	struct grid_cell		 gc;
	struct grid_line		*gl;
	struct utf8_data		 ud;
	u_int				 i, xx, wrapped = 0;
	const char			*s;

	if (sx > ex)
		return;

	/*
	 * Work out if the line was wrapped at the screen edge and all of it is
	 * on screen.
	 */
	gl = FUNC1(gd, sy);
	if (gl->flags & GRID_LINE_WRAPPED && gl->cellsize <= gd->sx)
		wrapped = 1;

	/* If the line was wrapped, don't strip spaces (use the full length). */
	if (wrapped)
		xx = gl->cellsize;
	else
		xx = FUNC6(wme, sy);
	if (ex > xx)
		ex = xx;
	if (sx > xx)
		sx = xx;

	if (sx < ex) {
		for (i = sx; i < ex; i++) {
			FUNC0(gd, i, sy, &gc);
			if (gc.flags & GRID_FLAG_PADDING)
				continue;
			FUNC5(&ud, &gc.data);
			if (ud.size == 1 && (gc.attr & GRID_ATTR_CHARSET)) {
				s = FUNC4(NULL, ud.data[0]);
				if (s != NULL && FUNC3(s) <= sizeof ud.data) {
					ud.size = FUNC3(s);
					FUNC2(ud.data, s, ud.size);
				}
			}

			*buf = FUNC7(*buf, (*off) + ud.size);
			FUNC2(*buf + *off, ud.data, ud.size);
			*off += ud.size;
		}
	}

	/* Only add a newline if the line wasn't wrapped. */
	if (!wrapped || ex != xx) {
		*buf = FUNC7(*buf, (*off) + 1);
		(*buf)[(*off)++] = '\n';
	}
}