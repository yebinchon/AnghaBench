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
struct view {int /*<<< orphan*/  name; scalar_t__ keymap; struct view* parent; } ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int /*<<< orphan*/ * git_dir; } ;

/* Variables and functions */
 int OPEN_PREPARED ; 
 int OPEN_REFRESH ; 
 int OPEN_RELOAD ; 
 int /*<<< orphan*/  VIEW_NO_GIT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct view** display ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,struct view*,int) ; 
 TYPE_1__ repo ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct view*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct view *prev, struct view *view, enum open_flags flags)
{
	bool reload = !!(flags & (OPEN_RELOAD | OPEN_PREPARED));
	int nviews = FUNC1();

	FUNC0(flags ^ OPEN_REFRESH);

	if (view == prev && nviews == 1 && !reload) {
		FUNC4("Already in %s view", view->name);
		return;
	}

	if (!FUNC6(view, VIEW_NO_GIT_DIR) && !repo.git_dir[0]) {
		FUNC4("The %s view is disabled in pager mode", view->name);
		return;
	}

	/* don't use a child view as previous view */
	if (prev && prev->parent && prev == display[1])
		prev = prev->parent;

	if (!view->keymap)
		view->keymap = FUNC2(view->name, FUNC5(view->name));
	FUNC3(view, prev ? prev : view, flags);
}