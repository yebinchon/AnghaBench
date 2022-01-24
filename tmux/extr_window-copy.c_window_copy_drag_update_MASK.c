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
typedef  scalar_t__ u_int ;
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {struct window_copy_mode_data* data; int /*<<< orphan*/ * mode; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; int /*<<< orphan*/  dragtimer; int /*<<< orphan*/  screen; } ;
struct timeval {int /*<<< orphan*/  tv_usec; } ;
struct mouse_event {int dummy; } ;
struct client {int dummy; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WINDOW_COPY_DRAG_REPEAT_TIME ; 
 scalar_t__ FUNC1 (struct window_pane*,struct mouse_event*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC2 (struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*,int) ; 
 int /*<<< orphan*/  window_copy_mode ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct window_mode_entry*,int) ; 
 int /*<<< orphan*/  window_view_mode ; 

__attribute__((used)) static void
FUNC11(struct client *c, struct mouse_event *m)
{
	struct window_pane		*wp;
	struct window_mode_entry	*wme;
	struct window_copy_mode_data	*data;
	u_int				 x, y, old_cx, old_cy;
	struct timeval			 tv = {
		.tv_usec = WINDOW_COPY_DRAG_REPEAT_TIME
	};

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

	data = wme->data;
	FUNC4(&data->dragtimer);

	if (FUNC1(wp, m, &x, &y, 0) != 0)
		return;
	old_cx = data->cx;
	old_cy = data->cy;

	FUNC9(wme, x, y);
	if (FUNC10(wme, 1))
		FUNC8(wme, old_cy);
	if (old_cy != data->cy || old_cx == data->cx) {
		if (y == 0) {
			FUNC3(&data->dragtimer, &tv);
			FUNC7(wme, 1);
		} else if (y == FUNC5(&data->screen) - 1) {
			FUNC3(&data->dragtimer, &tv);
			FUNC6(wme, 1);
		}
	}
}