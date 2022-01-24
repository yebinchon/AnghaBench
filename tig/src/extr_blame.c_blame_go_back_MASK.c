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
struct TYPE_4__ {int /*<<< orphan*/  lineno; } ;
struct view {TYPE_2__ pos; TYPE_1__* env; } ;
struct blame_history_state {int /*<<< orphan*/  filename; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  goto_lineno; int /*<<< orphan*/  file; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  blame_view_history ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,struct blame_history_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct view*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct view *view)
{
	struct blame_history_state history_state;

	if (!FUNC0(&blame_view_history, &view->pos, &history_state)) {
		FUNC2("Already at start of history");
		return;
	}

	FUNC3(view->env->ref, history_state.id);
	FUNC4(view->env->file, history_state.filename, FUNC5(history_state.filename));
	view->env->goto_lineno = view->pos.lineno;
	FUNC1(view);
}