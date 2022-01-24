#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {TYPE_1__* env; int /*<<< orphan*/  pos; struct view* prev; struct view* parent; struct grep_state* private; } ;
struct line {int dummy; } ;
struct grep_state {char const* last_file; } ;
struct grep_line {char const* file; int /*<<< orphan*/  lineno; int /*<<< orphan*/ * text; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_4__ {char const* exec_dir; } ;
struct TYPE_3__ {int /*<<< orphan*/  goto_lineno; int /*<<< orphan*/ * ref; int /*<<< orphan*/ * blob; } ;

/* Variables and functions */
 int OPEN_RELOAD ; 
 int OPEN_SPLIT ; 
#define  REQ_EDIT 131 
#define  REQ_ENTER 130 
 int REQ_NONE ; 
#define  REQ_REFRESH 129 
#define  REQ_VIEW_BLAME 128 
 struct view blob_view ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct grep_line* FUNC1 (struct line*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,struct view*,char const**,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*) ; 
 TYPE_2__ repo ; 
 int /*<<< orphan*/  FUNC5 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct view*) ; 
 int /*<<< orphan*/  FUNC7 (struct view*) ; 

__attribute__((used)) static enum request
FUNC8(struct view *view, enum request request, struct line *line)
{
	struct grep_state *state = view->private;
	struct grep_line *grep = FUNC1(line);
	struct view *file_view = &blob_view;

	switch (request) {
	case REQ_REFRESH:
		FUNC4(view);
		return REQ_NONE;

	case REQ_ENTER:
		if (!*grep->file)
			return REQ_NONE;
		if (file_view->parent == view && file_view->prev == view &&
		    state->last_file == grep->file && FUNC7(file_view)) {
			if (*grep->text) {
				FUNC5(file_view, grep->lineno);
				FUNC6(file_view);
			}

		} else {
			const char *file_argv[] = { repo.exec_dir, grep->file, NULL };

			FUNC0(&file_view->pos);
			view->env->goto_lineno = grep->lineno;
			view->env->blob[0] = 0;
			FUNC2(view, file_view, file_argv, repo.exec_dir, OPEN_SPLIT | OPEN_RELOAD);
		}
		state->last_file = grep->file;
		return REQ_NONE;

	case REQ_EDIT:
		if (!*grep->file)
			return request;
		FUNC3(grep->file, grep->lineno + 1);
		return REQ_NONE;

	case REQ_VIEW_BLAME:
		view->env->ref[0] = 0;
		view->env->goto_lineno = grep->lineno;
		return request;

	default:
		return request;
	}
}