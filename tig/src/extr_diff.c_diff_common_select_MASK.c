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
struct view {TYPE_2__* ops; int /*<<< orphan*/  ref; TYPE_1__* env; } ;
struct line {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {scalar_t__* blob; scalar_t__ goto_lineno; scalar_t__ lineno; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 scalar_t__ LINE_DIFF_STAT ; 
 int /*<<< orphan*/  REQ_ENTER ; 
 struct line* FUNC0 (struct view*,struct line*) ; 
 scalar_t__ FUNC1 (struct view*,struct line*) ; 
 char* FUNC2 (struct view*,struct line*) ; 
 char const* FUNC3 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,struct line*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct view *view, struct line *line, const char *changes_msg)
{
	if (line->type == LINE_DIFF_STAT) {
		struct line *header = FUNC0(view, line);
		if (header) {
			const char *file = FUNC2(view, header);

			if (file) {
				FUNC5(view->env->file, "%s", file);
				view->env->lineno = view->env->goto_lineno = 0;
				view->env->blob[0] = 0;
			}
		}

		FUNC5(view->ref, "Press '%s' to jump to file diff",
			      FUNC3(view, REQ_ENTER));
	} else {
		const char *file = FUNC2(view, line);

		if (file) {
			if (changes_msg)
				FUNC5(view->ref, "%s to '%s'", changes_msg, file);
			FUNC5(view->env->file, "%s", file);
			view->env->lineno = view->env->goto_lineno = FUNC1(view, line);
			view->env->blob[0] = 0;
		} else {
			FUNC6(view->ref, view->ops->id, FUNC7(view->ops->id));
			FUNC4(view, line);
		}
	}
}