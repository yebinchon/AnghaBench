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
struct TYPE_2__ {scalar_t__ offset; scalar_t__ lineno; } ;
struct view {scalar_t__ lines; int height; int has_scrolled; int /*<<< orphan*/  win; TYPE_1__ pos; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct view*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct view *view, int lines)
{
	bool redraw_current_line = false;

	/* The rendering expects the new offset. */
	view->pos.offset += lines;

	FUNC1(0 <= view->pos.offset && view->pos.offset < view->lines);
	FUNC1(lines);

	/* Move current line into the view. */
	if (view->pos.lineno < view->pos.offset) {
		view->pos.lineno = view->pos.offset;
		redraw_current_line = true;
	} else if (view->pos.lineno >= view->pos.offset + view->height) {
		view->pos.lineno = view->pos.offset + view->height - 1;
		redraw_current_line = true;
	}

	FUNC1(view->pos.offset <= view->pos.lineno && view->pos.lineno < view->lines);

	/* Redraw the whole screen if scrolling is pointless. */
	if (view->height < FUNC0(lines)) {
		FUNC3(view);

	} else {
		int line = lines > 0 ? view->height - lines : 0;
		int end = line + FUNC0(lines);

		FUNC5(view->win, true);
		FUNC7(view->win, lines);
		FUNC5(view->win, false);

		while (line < end && FUNC2(view, line))
			line++;

		if (redraw_current_line)
			FUNC2(view, view->pos.lineno - view->pos.offset);
		FUNC6(view->win);
	}

	view->has_scrolled = true;
	FUNC4();
}