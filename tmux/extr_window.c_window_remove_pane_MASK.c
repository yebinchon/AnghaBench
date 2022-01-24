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
struct window_pane {int dummy; } ;
struct window {int /*<<< orphan*/  panes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC1 (struct window*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_pane*) ; 

void
FUNC3(struct window *w, struct window_pane *wp)
{
	FUNC1(w, wp);

	FUNC0(&w->panes, wp, entry);
	FUNC2(wp);
}