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
struct view {int /*<<< orphan*/  argv; TYPE_1__* env; int /*<<< orphan*/  ref; } ;
struct line {int dummy; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {int /*<<< orphan*/  stash; } ;

/* Variables and functions */
 char* DIFF_ARGS ; 
 int OPEN_DEFAULT ; 
 int OPEN_PREPARED ; 
 int OPEN_SPLIT ; 
#define  REQ_ENTER 129 
 int REQ_NONE ; 
#define  REQ_VIEW_DIFF 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,char const**,int,int) ; 
 char* FUNC1 () ; 
 struct view diff_view ; 
 struct view** display ; 
 char* encoding_arg ; 
 char* FUNC2 () ; 
 int FUNC3 (struct view*,int,struct line*) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct view*,struct view*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct view*) ; 

enum request
FUNC10(struct view *view, enum request request, struct line *line)
{
	enum open_flags flags = (FUNC9(view) && request != REQ_VIEW_DIFF)
				? OPEN_SPLIT : OPEN_DEFAULT;
	struct view *diff = &diff_view;

	switch (request) {
	case REQ_VIEW_DIFF:
	case REQ_ENTER:
		if (FUNC9(view) && display[0] != view)
			FUNC4(view, true);

		if (!FUNC9(diff) ||
		    FUNC8(view->env->stash, diff->ref)) {
			const char *diff_argv[] = {
				"git", "stash", "show", encoding_arg, "--pretty=fuller",
					"--root", "--patch-with-stat",
					FUNC7(), FUNC1(),
					FUNC2(), DIFF_ARGS,
					"--no-color", "%(stash)", NULL
			};

			if (!FUNC0(diff_view.env, &diff_view.argv, diff_argv, false, false))
				FUNC6("Failed to format argument");
			else
				FUNC5(view, &diff_view, flags | OPEN_PREPARED);
		}
		return REQ_NONE;

	default:
		return FUNC3(view, request, line);
	}
}