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
struct view {int curtype; int /*<<< orphan*/  win; TYPE_1__* curline; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int /*<<< orphan*/  selected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct view *view, enum line_type type)
{
	if (!view->curline->selected && view->curtype != type) {
		(void) FUNC3(view->win, FUNC0(view, type));
		FUNC4(view->win, -1, 0, FUNC1(view, type), NULL);
#if defined(NCURSES_VERSION_PATCH) && NCURSES_VERSION_PATCH < 20061217
		touchwin(view->win);
#endif
		view->curtype = type;
	}
}