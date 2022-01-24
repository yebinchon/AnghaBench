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
struct sway_workspace {struct sway_output* output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {TYPE_2__* workspaces; TYPE_1__* wlr_output; } ;
struct TYPE_4__ {int length; struct sway_workspace** items; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct sway_seat* FUNC1 () ; 
 int FUNC2 (TYPE_2__*,struct sway_workspace*) ; 
 struct sway_workspace* FUNC3 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_output*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int,int) ; 

__attribute__((used)) static struct sway_workspace *FUNC9(
		struct sway_output *output, int dir, bool create) {
	struct sway_seat *seat = FUNC1();
	struct sway_workspace *workspace = FUNC3(seat);
	if (!workspace) {
		FUNC4(SWAY_DEBUG,
				"No focused workspace to base prev/next on output off of");
		return NULL;
	}

	int index = FUNC2(output->workspaces, workspace);
	if (!FUNC6(workspace) && create &&
			(index + dir < 0 || index + dir == output->workspaces->length)) {
		struct sway_output *output = workspace->output;
		char *next = FUNC7(output->wlr_output->name);
		FUNC5(output, next);
		FUNC0(next);
	}
	size_t new_index = FUNC8(index + dir, output->workspaces->length);
	return output->workspaces->items[new_index];
}