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
struct window {struct window* name; int /*<<< orphan*/  options; int /*<<< orphan*/  offset_timer; int /*<<< orphan*/  alerts_timer; int /*<<< orphan*/  name_event; struct window* old_layout; int /*<<< orphan*/ * saved_layout_root; int /*<<< orphan*/ * layout_root; int /*<<< orphan*/  references; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct window*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct window*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct window*) ; 
 int /*<<< orphan*/  windows ; 

__attribute__((used)) static void
FUNC9(struct window *w)
{
	FUNC6("window @%u destroyed (%d references)", w->id, w->references);

	FUNC0(windows, &windows, w);

	if (w->layout_root != NULL)
		FUNC5(w->layout_root);
	if (w->saved_layout_root != NULL)
		FUNC5(w->saved_layout_root);
	FUNC4(w->old_layout);

	FUNC8(w);

	if (FUNC2(&w->name_event))
		FUNC3(&w->name_event);

	if (FUNC2(&w->alerts_timer))
		FUNC3(&w->alerts_timer);
	if (FUNC2(&w->offset_timer))
		FUNC1(&w->offset_timer);

	FUNC7(w->options);

	FUNC4(w->name);
	FUNC4(w);
}