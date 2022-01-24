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
typedef  int time_t ;
struct view {scalar_t__ lines; int start_time; int update_secs; int force_redraw; int /*<<< orphan*/  pipe; TYPE_1__* ops; struct encoding* encoding; } ;
struct encoding {int dummy; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* read ) (struct view*,struct buffer*,int) ;} ;

/* Variables and functions */
 struct encoding* default_encoding ; 
 int /*<<< orphan*/  FUNC0 (struct encoding*,struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct buffer*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct view*) ; 
 int /*<<< orphan*/  FUNC8 (struct view*) ; 
 int /*<<< orphan*/  FUNC9 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (struct view*) ; 
 int /*<<< orphan*/  FUNC12 (struct view*,struct buffer*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct view*) ; 
 scalar_t__ FUNC15 (struct view*) ; 

bool
FUNC16(struct view *view)
{
	/* Clear the view and redraw everything since the tree sorting
	 * might have rearranged things. */
	bool redraw = view->lines == 0;
	bool can_read = true;
	struct encoding *encoding = view->encoding ? view->encoding : default_encoding;
	struct buffer line;

	if (!view->pipe)
		return true;

	if (!FUNC2(view->pipe, false)) {
		if (view->lines == 0 && FUNC15(view)) {
			time_t secs = FUNC13(NULL) - view->start_time;

			if (secs > 1 && secs > view->update_secs) {
				if (view->update_secs == 0)
					FUNC7(view);
				FUNC14(view);
				view->update_secs = secs;
			}
		}
		return true;
	}

	for (; FUNC5(view->pipe, &line, '\n', can_read); can_read = false) {
		if (encoding && !FUNC0(encoding, &line)) {
			FUNC10("Encoding failure");
			FUNC1(view, true);
			return false;
		}

		if (!view->ops->read(view, &line, false)) {
			FUNC10("Allocation failure");
			FUNC1(view, true);
			return false;
		}
	}

	if (FUNC4(view->pipe)) {
		FUNC10("Failed to read: %s", FUNC6(view->pipe));
		FUNC1(view, true);

	} else if (FUNC3(view->pipe)) {
		FUNC1(view, false);
	}

	if (FUNC11(view))
		redraw = true;

	if (!FUNC15(view))
		return true;

	if (redraw || view->force_redraw)
		FUNC9(view, 0);
	else
		FUNC8(view);
	view->force_redraw = false;

	/* Update the title _after_ the redraw so that if the redraw picks up a
	 * commit reference in view->ref it'll be available here. */
	FUNC14(view);
	return true;
}