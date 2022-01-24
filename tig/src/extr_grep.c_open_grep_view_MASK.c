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
struct view {int /*<<< orphan*/  pos; scalar_t__ lines; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPEN_DEFAULT ; 
 int /*<<< orphan*/  OPEN_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 struct view grep_view ; 
 scalar_t__ FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,struct view*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct view *prev)
{
	struct view *view = &grep_view;
	bool in_grep_view = prev == view;

	if ((!prev && FUNC2(view)) || (view->lines && !in_grep_view)) {
		FUNC3(prev, view, OPEN_DEFAULT);
	} else {
		if (FUNC1()) {
			FUNC0(&view->pos);
			FUNC3(prev, view, OPEN_RELOAD);
		}
	}
}