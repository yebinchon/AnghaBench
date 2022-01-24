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
struct ref {int dummy; } ;
struct line {scalar_t__ type; struct commit* data; } ;
struct commit {int /*<<< orphan*/  id; int /*<<< orphan*/  title; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ LINE_STAT_STAGED ; 
 scalar_t__ LINE_STAT_UNSTAGED ; 
 scalar_t__ LINE_STAT_UNTRACKED ; 
 struct ref* FUNC0 (struct line*,struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ref const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct view *view, struct line *line)
{
	struct commit *commit = line->data;

	if (line->type == LINE_STAT_STAGED || line->type == LINE_STAT_UNSTAGED || line->type == LINE_STAT_UNTRACKED) {
		FUNC4(view->ref, commit->title, FUNC5(commit->title));
		FUNC2(view->env->status, line->type, NULL);
	} else {
		const struct ref *ref = FUNC0(line, commit);

		FUNC3(view->ref, commit->id);
		if (ref)
			FUNC1(view->env, ref, true);
	}
	FUNC3(view->env->commit, commit->id);
}