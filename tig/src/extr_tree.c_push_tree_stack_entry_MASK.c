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
struct view_state {int dummy; } ;
struct view {TYPE_1__* env; } ;
struct position {int dummy; } ;
struct TYPE_2__ {char* directory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct position*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct view_state* FUNC2 (int /*<<< orphan*/ *,struct position*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t*,char*,char const*) ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  tree_view_history ; 

__attribute__((used)) static void
FUNC5(struct view *view, const char *name, struct position *position)
{
	size_t pathlen = FUNC4(view->env->directory);
	char *path_position = view->env->directory + pathlen;
	struct view_state *state = FUNC2(&tree_view_history, position, &path_position);

	if (!state)
		return;

	if (!FUNC3(view->env->directory, &pathlen, "%s/", name)) {
		FUNC1(NULL);
		return;
	}

	FUNC0(position);
}