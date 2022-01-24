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
struct sway_workspace {int dummy; } ;
struct sway_view {TYPE_1__* container; } ;
struct sway_seat {int dummy; } ;
struct TYPE_4__ {int focus_on_window_activation; } ;
struct TYPE_3__ {struct sway_workspace* workspace; } ;

/* Variables and functions */
#define  FOWA_FOCUS 131 
#define  FOWA_NONE 130 
#define  FOWA_SMART 129 
#define  FOWA_URGENT 128 
 TYPE_2__* config ; 
 struct sway_seat* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_view*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_workspace*) ; 

void FUNC4(struct sway_view *view) {
	struct sway_workspace *ws = view->container->workspace;
	if (!ws) { // hidden scratchpad container
		return;
	}
	struct sway_seat *seat = FUNC0();

	switch (config->focus_on_window_activation) {
	case FOWA_SMART:
		if (FUNC3(ws)) {
			FUNC1(seat, view->container);
		} else {
			FUNC2(view, true);
		}
		break;
	case FOWA_URGENT:
		FUNC2(view, true);
		break;
	case FOWA_FOCUS:
		FUNC1(seat, view->container);
		break;
	case FOWA_NONE:
		break;
	}
}