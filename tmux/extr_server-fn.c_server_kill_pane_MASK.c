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
struct window_pane {struct window* window; } ;
struct window {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window_pane*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct window*) ; 
 int /*<<< orphan*/  FUNC3 (struct window*) ; 
 int /*<<< orphan*/  FUNC4 (struct window*) ; 
 int FUNC5 (struct window*) ; 
 int /*<<< orphan*/  FUNC6 (struct window*,struct window_pane*) ; 

void
FUNC7(struct window_pane *wp)
{
	struct window	*w = wp->window;

	if (FUNC5(w) == 1) {
		FUNC2(w);
		FUNC1();
	} else {
		FUNC4(w);
		FUNC0(wp);
		FUNC6(w, wp);
		FUNC3(w);
	}
}