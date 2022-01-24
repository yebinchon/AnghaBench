#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {TYPE_6__* floating; } ;
struct sway_output {scalar_t__ width; scalar_t__ height; scalar_t__ lx; scalar_t__ ly; TYPE_3__* wlr_output; TYPE_2__* workspaces; } ;
struct sway_container {scalar_t__ width; scalar_t__ height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_14__ {TYPE_5__* noop_output; TYPE_1__* outputs; } ;
struct TYPE_13__ {int length; struct sway_container** items; } ;
struct TYPE_12__ {TYPE_4__* workspaces; } ;
struct TYPE_11__ {struct sway_workspace** items; scalar_t__ length; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int length; struct sway_workspace** items; } ;
struct TYPE_8__ {int length; struct sway_output** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_output*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_output*) ; 
 TYPE_7__* root ; 
 struct sway_workspace* FUNC5 (struct sway_output*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sway_output* FUNC8 (struct sway_workspace*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct sway_output *output) {
	// Workspace output priority
	for (int i = 0; i < root->outputs->length; i++) {
		struct sway_output *other = root->outputs->items[i];
		if (other == output) {
			continue;
		}

		for (int j = 0; j < other->workspaces->length; j++) {
			struct sway_workspace *ws = other->workspaces->items[j];
			struct sway_output *highest =
				FUNC8(ws, NULL);
			if (highest == output) {
				FUNC6(ws);
				FUNC3(output, ws);
				FUNC2(NULL, ws, "move");
				j--;
			}
		}

		if (other->workspaces->length == 0) {
			char *next = FUNC7(other->wlr_output->name);
			struct sway_workspace *ws = FUNC5(other, next);
			FUNC1(next);
			FUNC2(NULL, ws, "init");
		}
	}

	// Saved workspaces
	while (root->noop_output->workspaces->length) {
		struct sway_workspace *ws = root->noop_output->workspaces->items[0];
		FUNC6(ws);
		FUNC3(output, ws);

		// If the floater was made floating while on the NOOP output, its width
		// and height will be zero and it should be reinitialized as a floating
		// container to get the appropriate size and location. Additionally, if
		// the floater is wider or taller than the output or is completely
		// outside of the output's bounds, do the same as the output layout has
		// likely changed and the maximum size needs to be checked and the
		// floater re-centered
		for (int i = 0; i < ws->floating->length; i++) {
			struct sway_container *floater = ws->floating->items[i];
			if (floater->width == 0 || floater->height == 0 ||
					floater->width > output->width ||
					floater->height > output->height ||
					floater->x > output->lx + output->width ||
					floater->y > output->ly + output->height ||
					floater->x + floater->width < output->lx ||
					floater->y + floater->height < output->ly) {
				FUNC0(floater);
			}
		}

		FUNC2(NULL, ws, "move");
	}

	FUNC4(output);
}