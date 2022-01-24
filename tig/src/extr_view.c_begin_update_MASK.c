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
struct view {char const* dir; TYPE_1__* ops; int /*<<< orphan*/  io; int /*<<< orphan*/  name; scalar_t__* argv; int /*<<< orphan*/  prev; int /*<<< orphan*/  env; int /*<<< orphan*/  unrefreshable; scalar_t__ pipe; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int OPEN_EXTRA ; 
 int OPEN_PREPARED ; 
 int OPEN_REFRESH ; 
 int OPEN_STDIN ; 
 int SUCCESS ; 
 int /*<<< orphan*/  VIEW_FILE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__**,char const**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ opt_file_filter ; 
 int /*<<< orphan*/  FUNC8 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct view*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct view*,int) ; 

enum status_code
FUNC12(struct view *view, const char *dir, const char **argv, enum open_flags flags)
{
	bool extra = !!(flags & (OPEN_EXTRA));
	bool refresh = flags & (OPEN_REFRESH | OPEN_PREPARED | OPEN_STDIN);

	if (FUNC11(view, flags))
		return SUCCESS;

	if (view->pipe) {
		if (extra)
			FUNC4(view->pipe);
		else
			FUNC2(view, true);
	}

	view->unrefreshable = FUNC7(flags);

	if (!refresh && argv) {
		bool file_filter = !FUNC10(view, VIEW_FILE_FILTER) || opt_file_filter;

		view->dir = dir;
		if (!FUNC0(view->env, &view->argv, argv, !view->prev, file_filter))
			return FUNC3("Failed to format %s arguments", view->name);
	}

	if (view->argv && view->argv[0] &&
	    !FUNC9(view, flags))
		return FUNC3("Failed to open %s view", view->name);

	if (FUNC6(flags)) {
		if (!FUNC5(&view->io, "%s", ""))
			FUNC1("Failed to open stdin");
	}

	if (!extra)
		FUNC8(view, view->ops->id);

	return SUCCESS;
}