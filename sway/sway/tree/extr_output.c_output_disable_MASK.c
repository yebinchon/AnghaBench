#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  destroy; } ;
struct sway_output {int enabled; int configured; int /*<<< orphan*/ * current_mode; TYPE_2__ events; TYPE_1__* wlr_output; } ;
struct TYPE_6__ {int /*<<< orphan*/  outputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_output*) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  untrack_output ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sway_output*) ; 

void FUNC8(struct sway_output *output) {
	if (!FUNC5(output->enabled, "Expected an enabled output")) {
		return;
	}
	FUNC6(SWAY_DEBUG, "Disabling output '%s'", output->wlr_output->name);
	FUNC7(&output->events.destroy, output);

	FUNC3(output);

	FUNC4(untrack_output, output);

	int index = FUNC2(root->outputs, output);
	FUNC1(root->outputs, index);

	output->enabled = false;
	output->configured = false;
	output->current_mode = NULL;

	FUNC0();
}