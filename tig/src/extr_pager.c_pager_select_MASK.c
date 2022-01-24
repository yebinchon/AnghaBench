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
struct view {TYPE_1__* env; int /*<<< orphan*/  ref; } ;
struct line {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 scalar_t__ LINE_COMMIT ; 
 int /*<<< orphan*/  VIEW_NO_REF ; 
 char* FUNC0 (struct line*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct view*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct view *view, struct line *line)
{
	const char *text = FUNC0(line);

	FUNC3(view->env->text, text, FUNC4(text));

	if (line->type == LINE_COMMIT) {
		FUNC2(view->env->commit, text);
		if (!FUNC5(view, VIEW_NO_REF))
			FUNC1(view->ref, view->env->commit);
	}
}