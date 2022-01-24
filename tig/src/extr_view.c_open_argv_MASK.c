#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct view {char const* dir; int /*<<< orphan*/  io; int /*<<< orphan*/  name; int /*<<< orphan*/  argv; scalar_t__ pipe; } ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 int OPEN_PREPARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,struct view*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct view *prev, struct view *view, const char *argv[], const char *dir, enum open_flags flags)
{
	if (view->pipe)
		FUNC1(view, true);
	view->dir = dir;

	if (!FUNC0(&view->argv, argv)) {
		FUNC4("Failed to open %s view: %s", view->name, FUNC2(&view->io));
	} else {
		FUNC3(prev, view, flags | OPEN_PREPARED);
	}
}