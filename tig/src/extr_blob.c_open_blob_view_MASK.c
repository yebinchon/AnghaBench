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
struct view {TYPE_1__* env; int /*<<< orphan*/  pos; scalar_t__ lines; } ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {scalar_t__* blob; scalar_t__* file; int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 int OPEN_RELOAD ; 
 struct view blob_view ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,struct view*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void
FUNC5(struct view *prev, enum open_flags flags)
{
	struct view *view = &blob_view;
	bool in_blob_view = prev == view;
	bool has_blob_selection = view->env->blob[0] || view->env->file[0];

	if (!in_blob_view && (view->lines || has_blob_selection)) {
		FUNC2(prev, view, flags);

	} else {
		const char *file = FUNC1(view->env->commit);

		if (file) {
			FUNC0(&view->pos);
			FUNC3(view->env->file, file, FUNC4(file));
			view->env->blob[0] = 0;
			FUNC2(prev, view, OPEN_RELOAD);
		}
	}
}