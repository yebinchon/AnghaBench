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
struct swaybar_output {struct swaybar_output* identifier; struct swaybar_output* name; int /*<<< orphan*/  link; int /*<<< orphan*/  workspaces; int /*<<< orphan*/  hotspots; int /*<<< orphan*/ * buffers; int /*<<< orphan*/  output; int /*<<< orphan*/  xdg_output; int /*<<< orphan*/ * input_region; int /*<<< orphan*/ * surface; int /*<<< orphan*/ * layer_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct swaybar_output*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct swaybar_output *output) {
	if (!output) {
		return;
	}
	FUNC4(SWAY_DEBUG, "Removing output %s", output->name);
	if (output->layer_surface != NULL) {
		FUNC9(output->layer_surface);
	}
	if (output->surface != NULL) {
		FUNC8(output->surface);
	}
	if (output->input_region != NULL) {
		FUNC7(output->input_region);
	}
	FUNC10(output->xdg_output);
	FUNC6(output->output);
	FUNC0(&output->buffers[0]);
	FUNC0(&output->buffers[1]);
	FUNC2(&output->hotspots);
	FUNC3(&output->workspaces);
	FUNC5(&output->link);
	FUNC1(output->name);
	FUNC1(output->identifier);
	FUNC1(output);
}