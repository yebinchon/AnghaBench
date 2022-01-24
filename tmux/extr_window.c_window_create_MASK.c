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
typedef  void* u_int ;
struct window {int lastlayout; scalar_t__ id; int /*<<< orphan*/  winlinks; scalar_t__ references; int /*<<< orphan*/  options; void* sy; void* sx; int /*<<< orphan*/ * layout_root; int /*<<< orphan*/ * active; int /*<<< orphan*/  panes; scalar_t__ flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct window*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_w_options ; 
 int /*<<< orphan*/  next_window_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct window*) ; 
 int /*<<< orphan*/  windows ; 
 struct window* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct window *
FUNC6(u_int sx, u_int sy)
{
	struct window	*w;

	w = FUNC4(1, sizeof *w);
	w->name = FUNC5("");
	w->flags = 0;

	FUNC1(&w->panes);
	w->active = NULL;

	w->lastlayout = -1;
	w->layout_root = NULL;

	w->sx = sx;
	w->sy = sy;

	w->options = FUNC2(global_w_options);

	w->references = 0;
	FUNC1(&w->winlinks);

	w->id = next_window_id++;
	FUNC0(windows, &windows, w);

	FUNC3(w);

	return (w);
}