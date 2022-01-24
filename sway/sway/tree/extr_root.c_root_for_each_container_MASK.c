#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {int dummy; } ;
struct sway_output {int dummy; } ;
typedef  struct sway_container sway_container ;
struct TYPE_10__ {TYPE_4__* noop_output; TYPE_2__* scratchpad; TYPE_1__* outputs; } ;
struct TYPE_9__ {TYPE_3__* workspaces; } ;
struct TYPE_8__ {int length; struct sway_workspace** items; } ;
struct TYPE_7__ {int length; struct sway_container** items; } ;
struct TYPE_6__ {int length; struct sway_output** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*,void (*) (struct sway_container*,void*),void*) ; 
 scalar_t__ FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*,void (*) (struct sway_container*,void*),void*) ; 
 TYPE_5__* root ; 
 int /*<<< orphan*/  FUNC3 (struct sway_workspace*,void (*) (struct sway_container*,void*),void*) ; 

void FUNC4(void (*f)(struct sway_container *con, void *data),
		void *data) {
	for (int i = 0; i < root->outputs->length; ++i) {
		struct sway_output *output = root->outputs->items[i];
		FUNC2(output, f, data);
	}

	// Scratchpad
	for (int i = 0; i < root->scratchpad->length; ++i) {
		struct sway_container *container = root->scratchpad->items[i];
		if (FUNC1(container)) {
			f(container, data);
			FUNC0(container, f, data);
		}
	}

	// Saved workspaces
	for (int i = 0; i < root->noop_output->workspaces->length; ++i) {
		struct sway_workspace *ws = root->noop_output->workspaces->items[i];
		FUNC3(ws, f, data);
	}
}