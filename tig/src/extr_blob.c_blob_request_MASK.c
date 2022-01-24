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
struct view {int /*<<< orphan*/  line; int /*<<< orphan*/  vid; TYPE_1__* env; struct blob_state* private; } ;
struct line {int dummy; } ;
struct blob_state {int /*<<< orphan*/  file; int /*<<< orphan*/  commit; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {struct line* goto_lineno; int /*<<< orphan*/  ref; int /*<<< orphan*/  file; } ;

/* Variables and functions */
#define  REQ_EDIT 130 
 int REQ_NONE ; 
#define  REQ_REFRESH 129 
#define  REQ_VIEW_BLAME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct view*,int,struct line*) ; 
 int /*<<< orphan*/  FUNC3 (struct view*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum request
FUNC7(struct view *view, enum request request, struct line *line)
{
	struct blob_state *state = view->private;

	switch (request) {
	case REQ_REFRESH:
		if (!state->file) {
			FUNC4("Cannot reload immutable blob");
		} else {
			FUNC5(view->env->file, state->file, FUNC6(state->file));
			FUNC3(view);
		}
		return REQ_NONE;

	case REQ_VIEW_BLAME:
		FUNC5(view->env->ref, state->commit, FUNC6(state->commit));
		view->env->goto_lineno = line - view->line;
		return request;

	case REQ_EDIT:
		if (state->file)
			FUNC1(state->file, (line - view->line) + 1);
		else
			FUNC0(view->vid, NULL, (line - view->line) + 1);
		return REQ_NONE;

	default:
		return FUNC2(view, request, line);
	}
}