#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {int /*<<< orphan*/ * mode; } ;
struct session {TYPE_2__* curw; } ;
struct TYPE_4__ {TYPE_1__* window; } ;
struct TYPE_3__ {struct window_pane* active; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ***** cfg_causes ; 
 scalar_t__ cfg_ncauses ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/  FUNC2 (struct window_pane*,char*,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/  FUNC3 (struct window_pane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_view_mode ; 

void
FUNC4(struct session *s)
{
	struct window_pane		*wp;
	struct window_mode_entry	*wme;
	u_int				 i;

	if (s == NULL || cfg_ncauses == 0)
		return;
	wp = s->curw->window->active;

	wme = FUNC0(&wp->modes);
	if (wme == NULL || wme->mode != &window_view_mode)
		FUNC3(wp, &window_view_mode, NULL, NULL);
	for (i = 0; i < cfg_ncauses; i++) {
		FUNC2(wp, "%s", cfg_causes[i]);
		FUNC1(&cfg_causes[i]);
	}

	FUNC1(cfg_causes);
	cfg_causes = NULL;
	cfg_ncauses = 0;
}