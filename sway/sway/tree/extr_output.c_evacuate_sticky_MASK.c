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
struct sway_workspace {TYPE_1__* floating; } ;
struct sway_output {int dummy; } ;
struct sway_container {int dummy; } ;
struct TYPE_2__ {struct sway_container** items; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*,char*) ; 
 struct sway_workspace* FUNC4 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_workspace*) ; 

__attribute__((used)) static void FUNC8(struct sway_workspace *old_ws,
		struct sway_output *new_output) {
	struct sway_workspace *new_ws = FUNC4(new_output);
	if (!FUNC5(new_ws, "New output does not have a workspace")) {
		return;
	}
	while (old_ws->floating->length) {
		struct sway_container *sticky = old_ws->floating->items[0];
		FUNC0(sticky);
		FUNC6(new_ws, sticky);
		FUNC2(sticky);
		FUNC1(sticky);
		FUNC3(sticky, "move");
	}
	FUNC7(new_ws);
}