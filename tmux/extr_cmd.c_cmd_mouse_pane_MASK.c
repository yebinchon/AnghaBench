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
struct winlink {int /*<<< orphan*/  window; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct mouse_event {int /*<<< orphan*/  wp; } ;

/* Variables and functions */
 struct winlink* FUNC0 (struct mouse_event*,struct session**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct window_pane*) ; 
 struct window_pane* FUNC2 (int /*<<< orphan*/ ) ; 

struct window_pane *
FUNC3(struct mouse_event *m, struct session **sp,
    struct winlink **wlp)
{
	struct winlink		*wl;
	struct window_pane     	*wp;

	if ((wl = FUNC0(m, sp)) == NULL)
		return (NULL);
	if ((wp = FUNC2(m->wp)) == NULL)
		return (NULL);
	if (!FUNC1(wl->window, wp))
		return (NULL);

	if (wlp != NULL)
		*wlp = wl;
	return (wp);
}