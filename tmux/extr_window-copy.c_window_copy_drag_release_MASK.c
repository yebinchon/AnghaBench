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
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {struct window_copy_mode_data* data; int /*<<< orphan*/ * mode; } ;
struct window_copy_mode_data {int /*<<< orphan*/  dragtimer; } ;
struct mouse_event {int dummy; } ;
struct client {int dummy; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct window_pane* FUNC1 (struct mouse_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_copy_mode ; 
 int /*<<< orphan*/  window_view_mode ; 

__attribute__((used)) static void
FUNC3(struct client *c, struct mouse_event *m)
{
	struct window_pane		*wp;
	struct window_mode_entry	*wme;
	struct window_copy_mode_data	*data;

	if (c == NULL)
		return;

	wp = FUNC1(m, NULL, NULL);
	if (wp == NULL)
		return;
	wme = FUNC0(&wp->modes);
	if (wme == NULL)
		return;
	if (wme->mode != &window_copy_mode && wme->mode != &window_view_mode)
		return;

	data = wme->data;
	FUNC2(&data->dragtimer);
}