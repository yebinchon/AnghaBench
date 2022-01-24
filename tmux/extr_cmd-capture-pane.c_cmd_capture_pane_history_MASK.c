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
typedef  int u_int ;
struct TYPE_2__ {struct grid* grid; } ;
struct window_pane {TYPE_1__ base; struct grid* saved_grid; } ;
struct grid_line {int flags; } ;
struct grid_cell {int dummy; } ;
struct grid {int hsize; int sy; } ;
struct cmdq_item {int dummy; } ;
struct args {int dummy; } ;

/* Variables and functions */
 int GRID_LINE_WRAPPED ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  SHRT_MAX ; 
 char* FUNC0 (struct args*,char) ; 
 int FUNC1 (struct args*,char) ; 
 int FUNC2 (struct args*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC3 (char*,size_t*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct grid_line* FUNC6 (struct grid*,int) ; 
 char* FUNC7 (struct grid*,int /*<<< orphan*/ ,int,int,struct grid_cell**,int,int,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 size_t FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static char *
FUNC12(struct args *args, struct cmdq_item *item,
    struct window_pane *wp, size_t *len)
{
	struct grid		*gd;
	const struct grid_line	*gl;
	struct grid_cell	*gc = NULL;
	int			 n, with_codes, escape_c0, join_lines, no_trim;
	u_int			 i, sx, top, bottom, tmp;
	char			*cause, *buf, *line;
	const char		*Sflag, *Eflag;
	size_t			 linelen;

	sx = FUNC8(&wp->base);
	if (FUNC1(args, 'a')) {
		gd = wp->saved_grid;
		if (gd == NULL) {
			if (!FUNC1(args, 'q')) {
				FUNC4(item, "no alternate screen");
				return (NULL);
			}
			return (FUNC11(""));
		}
	} else
		gd = wp->base.grid;

	Sflag = FUNC0(args, 'S');
	if (Sflag != NULL && FUNC9(Sflag, "-") == 0)
		top = 0;
	else {
		n = FUNC2(args, 'S', INT_MIN, SHRT_MAX, &cause);
		if (cause != NULL) {
			top = gd->hsize;
			FUNC5(cause);
		} else if (n < 0 && (u_int) -n > gd->hsize)
			top = 0;
		else
			top = gd->hsize + n;
		if (top > gd->hsize + gd->sy - 1)
			top = gd->hsize + gd->sy - 1;
	}

	Eflag = FUNC0(args, 'E');
	if (Eflag != NULL && FUNC9(Eflag, "-") == 0)
		bottom = gd->hsize + gd->sy - 1;
	else {
		n = FUNC2(args, 'E', INT_MIN, SHRT_MAX, &cause);
		if (cause != NULL) {
			bottom = gd->hsize + gd->sy - 1;
			FUNC5(cause);
		} else if (n < 0 && (u_int) -n > gd->hsize)
			bottom = 0;
		else
			bottom = gd->hsize + n;
		if (bottom > gd->hsize + gd->sy - 1)
			bottom = gd->hsize + gd->sy - 1;
	}

	if (bottom < top) {
		tmp = bottom;
		bottom = top;
		top = tmp;
	}

	with_codes = FUNC1(args, 'e');
	escape_c0 = FUNC1(args, 'C');
	join_lines = FUNC1(args, 'J');
	no_trim = FUNC1(args, 'N');

	buf = NULL;
	for (i = top; i <= bottom; i++) {
		line = FUNC7(gd, 0, i, sx, &gc, with_codes,
		    escape_c0, !join_lines && !no_trim);
		linelen = FUNC10(line);

		buf = FUNC3(buf, len, line, linelen);

		gl = FUNC6(gd, i);
		if (!join_lines || !(gl->flags & GRID_LINE_WRAPPED))
			buf[(*len)++] = '\n';

		FUNC5(line);
	}
	return (buf);
}