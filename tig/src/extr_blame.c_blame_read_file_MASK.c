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
struct view {scalar_t__ lines; TYPE_1__* env; int /*<<< orphan*/  vid; } ;
struct buffer {size_t size; int /*<<< orphan*/  data; } ;
struct blame_state {int done_reading; } ;
struct blame {scalar_t__* text; int /*<<< orphan*/ * commit; } ;
struct TYPE_4__ {int /*<<< orphan*/  exec_dir; } ;
struct TYPE_3__ {char* ref; char* file; scalar_t__ goto_lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DEFAULT ; 
 int /*<<< orphan*/  OPEN_EXTRA ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct view*,struct blame**,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC1 (struct view*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* encoding_arg ; 
 scalar_t__ FUNC3 (struct view*) ; 
 TYPE_2__ repo ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct view*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static bool
FUNC7(struct view *view, struct buffer *buf, struct blame_state *state)
{
	if (!buf) {
		const char *blame_argv[] = {
			"git", "blame", encoding_arg, "%(blameargs)", "--incremental",
				*view->env->ref ? view->env->ref : "--incremental", "--", view->env->file, NULL
		};

		if (FUNC3(view))
			FUNC2("No blame exist for %s", view->vid);

		if (view->lines == 0 || FUNC1(view, repo.exec_dir, blame_argv, OPEN_EXTRA) != SUCCESS) {
			FUNC4("Failed to load blame data");
			return true;
		}

		if (view->env->goto_lineno > 0) {
			FUNC5(view, view->env->goto_lineno);
			view->env->goto_lineno = 0;
		}

		state->done_reading = true;
		return false;

	} else {
		struct blame *blame;

		if (!FUNC0(view, &blame, LINE_DEFAULT, buf->size, false))
			return false;

		blame->commit = NULL;
		FUNC6(blame->text, buf->data, buf->size);
		blame->text[buf->size] = 0;
		return true;
	}
}