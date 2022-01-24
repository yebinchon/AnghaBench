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
typedef  int /*<<< orphan*/  u_int ;
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {int /*<<< orphan*/ * mode; } ;
struct mouse_event {int dummy; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct window_pane*,struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC2 (struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_copy_mode ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  window_view_mode ; 

__attribute__((used)) static void
FUNC4(struct mouse_event *m)
{
	struct window_pane		*wp;
	struct window_mode_entry	*wme;
	u_int				 x, y;

	wp = FUNC2(m, NULL, NULL);
	if (wp == NULL)
		return;
	wme = FUNC0(&wp->modes);
	if (wme == NULL)
		return;
	if (wme->mode != &window_copy_mode && wme->mode != &window_view_mode)
		return;

	if (FUNC1(wp, m, &x, &y, 0) != 0)
		return;

	FUNC3(wme, x, y);
}