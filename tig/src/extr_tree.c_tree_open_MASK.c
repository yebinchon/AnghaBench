#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct view {scalar_t__ lines; TYPE_2__* env; TYPE_1__* ops; int /*<<< orphan*/  vid; int /*<<< orphan*/  pos; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_6__ {char* prefix; int /*<<< orphan*/  exec_dir; } ;
struct TYPE_5__ {scalar_t__* directory; int /*<<< orphan*/  commit; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (struct view*,int /*<<< orphan*/ ,char const**,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__ repo ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum status_code
FUNC6(struct view *view, enum open_flags flags)
{
	static const char *tree_argv[] = {
		"git", "ls-tree", "-l", "%(commit)", "--", "%(directory)", NULL
	};

	if (FUNC5(view->env->commit))
		return FUNC1("No tree exists for this commit");

	if (view->lines == 0 && repo.prefix[0]) {
		char *pos = repo.prefix;

		while (pos && *pos) {
			char *end = FUNC3(pos, '/');

			if (end)
				*end = 0;
			FUNC2(view, pos, &view->pos);
			pos = end;
			if (end) {
				*end = '/';
				pos++;
			}
		}

	} else if (FUNC4(view->vid, view->ops->id)) {
		view->env->directory[0] = 0;
	}

	return FUNC0(view, repo.exec_dir, tree_argv, flags);
}