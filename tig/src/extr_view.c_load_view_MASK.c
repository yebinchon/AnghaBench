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
struct view {scalar_t__ lines; int /*<<< orphan*/  prev_pos; struct view* prev; int /*<<< orphan*/  win; scalar_t__ pipe; TYPE_1__* ops; scalar_t__ private; int /*<<< orphan*/  watch; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int (* open ) (struct view*,int) ;scalar_t__ private_size; int /*<<< orphan*/  (* done ) (struct view*) ;} ;

/* Variables and functions */
 int OPEN_REFRESH ; 
 int OPEN_RELOAD ; 
 int OPEN_SPLIT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  WATCH_EVENT_SWITCH_VIEW ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct view*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct view*) ; 
 int /*<<< orphan*/  FUNC10 (struct view*,struct view*) ; 
 int /*<<< orphan*/  FUNC11 (struct view*) ; 
 int FUNC12 (struct view*,int) ; 
 scalar_t__ FUNC13 (struct view*) ; 
 scalar_t__ FUNC14 (struct view*) ; 
 int /*<<< orphan*/  FUNC15 (struct view*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19(struct view *view, struct view *prev, enum open_flags flags)
{
	bool refresh = !FUNC15(view, flags);

	/* When prev == view it means this is the first loaded view. */
	if (prev && view != prev) {
		view->prev = prev;
	}

	if (!refresh && FUNC13(view) &&
	    FUNC17(&view->watch, WATCH_EVENT_SWITCH_VIEW)) {
		refresh = FUNC16(&view->watch);
		if (refresh)
			flags |= OPEN_REFRESH;
	}

	if (refresh) {
		enum status_code code;

		if (view->pipe)
			FUNC2(view, true);
		if (view->ops->private_size) {
			if (!view->private) {
				view->private = FUNC0(1, view->ops->private_size);
			} else {
				if (view->ops->done)
					view->ops->done(view);
				FUNC5(view->private, 0, view->ops->private_size);
			}
		}

		code = view->ops->open(view, flags);
		if (code != SUCCESS) {
			FUNC7("%s", FUNC3(code));
			return;
		}
	}

	if (prev) {
		bool split = !!(flags & OPEN_SPLIT);

		if (split) {
			FUNC10(prev, view);
		} else {
			FUNC4(view, false);
		}
	}

	FUNC9(view);

	if (view->pipe && view->lines == 0) {
		/* Clear the old view and let the incremental updating refill
		 * the screen. */
		FUNC18(view->win);
		/* Do not clear the position if it is the first view. */
		if (view->prev && !(flags & (OPEN_RELOAD | OPEN_REFRESH)))
			FUNC1(&view->prev_pos);
		FUNC8();
	} else if (FUNC14(view)) {
		FUNC6(view);
		FUNC8();
	}
}