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
struct TYPE_2__ {scalar_t__ lineno; scalar_t__ offset; } ;
struct view {scalar_t__ height; TYPE_1__ pos; struct view* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPEN_RELOAD ; 
 int /*<<< orphan*/  VIEW_FLEX_WIDTH ; 
 int current_view ; 
 struct view** display ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_focus_child ; 
 int /*<<< orphan*/  opt_vertical_split ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC5 (struct view*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct view*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct view*) ; 

void
FUNC9(struct view *prev, struct view *view)
{
	int height, width;
	bool vsplit;
	int nviews = FUNC0();

	FUNC2(stdscr, height, width);
	vsplit = FUNC6(opt_vertical_split, height, width);

	display[1] = view;
	current_view = opt_focus_child ? 1 : 0;
	view->parent = prev;
	FUNC4();

	if (prev->pos.lineno - prev->pos.offset >= prev->height) {
		/* Take the title line into account. */
		int lines = prev->pos.lineno - prev->pos.offset - prev->height + 1;

		/* Scroll the view that was split if the current line is
		 * outside the new limited view. */
		FUNC1(prev, lines);
	}

	if (view != prev && FUNC8(prev)) {
		/* "Blur" the previous view. */
		FUNC5(prev);
	}

	if (FUNC7(prev, VIEW_FLEX_WIDTH) && vsplit && nviews == 1)
		FUNC3(prev, NULL, OPEN_RELOAD);
}