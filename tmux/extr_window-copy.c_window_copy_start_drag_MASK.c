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
typedef  int /*<<< orphan*/  u_int ;
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {int /*<<< orphan*/ * mode; } ;
struct mouse_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mouse_drag_release; int /*<<< orphan*/  (* mouse_drag_update ) (struct client*,struct mouse_event*) ;} ;
struct client {TYPE_1__ tty; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct window_pane*,struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct window_pane* FUNC2 (struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_copy_drag_release ; 
 int /*<<< orphan*/  FUNC3 (struct client*,struct mouse_event*) ; 
 int /*<<< orphan*/  window_copy_mode ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  window_view_mode ; 

void
FUNC7(struct client *c, struct mouse_event *m)
{
	struct window_pane		*wp;
	struct window_mode_entry	*wme;
	u_int				 x, y;

	if (c == NULL)
		return;

	wp = FUNC2(m, NULL, NULL);
	if (wp == NULL)
		return;
	wme = FUNC0(&wp->modes);
	if (wme == NULL)
		return;
	if (wme->mode != &window_copy_mode && wme->mode != &window_view_mode)
		return;

	if (FUNC1(wp, m, &x, &y, 1) != 0)
		return;

	c->tty.mouse_drag_update = window_copy_drag_update;
	c->tty.mouse_drag_release = window_copy_drag_release;

	FUNC6(wme, x, y);
	FUNC5(wme);
	FUNC4(wme);

	FUNC3(c, m);
}