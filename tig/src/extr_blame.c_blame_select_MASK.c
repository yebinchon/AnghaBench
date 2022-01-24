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
struct TYPE_4__ {scalar_t__ lineno; } ;
struct view {TYPE_2__ pos; TYPE_1__* env; } ;
struct line {struct blame* data; } ;
struct blame_commit {scalar_t__ filename; int /*<<< orphan*/  id; } ;
struct blame {struct blame_commit* commit; } ;
struct TYPE_3__ {scalar_t__ lineno; int /*<<< orphan*/  file; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct view *view, struct line *line)
{
	struct blame *blame = line->data;
	struct blame_commit *commit = blame->commit;

	if (!commit)
		return;

	if (FUNC3(commit->id))
		FUNC2(view->env->commit, "HEAD", 4);
	else
		FUNC0(view->env->commit, commit->id);

	if (commit->filename)
		FUNC1(view->env->file, "%s", commit->filename);
	view->env->lineno = view->pos.lineno + 1;
}