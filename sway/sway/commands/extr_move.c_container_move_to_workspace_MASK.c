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
struct sway_workspace {struct sway_output* output; } ;
struct sway_output {int dummy; } ;
struct sway_container {scalar_t__ view; scalar_t__ height_fraction; scalar_t__ width_fraction; scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  fullscreen_mode; struct sway_workspace* workspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 scalar_t__ FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_workspace*) ; 

__attribute__((used)) static void FUNC10(struct sway_container *container,
		struct sway_workspace *workspace) {
	if (container->workspace == workspace) {
		return;
	}
	struct sway_workspace *old_workspace = container->workspace;
	if (FUNC3(container)) {
		struct sway_output *old_output = container->workspace->output;
		FUNC0(container);
		FUNC6(workspace, container);
		FUNC2(container);
		// If changing output, center it within the workspace
		if (old_output != workspace->output && !container->fullscreen_mode) {
			FUNC1(container);
		}
	} else {
		FUNC0(container);
		container->width = container->height = 0;
		container->width_fraction = container->height_fraction = 0;
		FUNC7(workspace, container);
		FUNC4(container);
	}
	if (container->view) {
		FUNC5(container, "move");
	}
	FUNC8(old_workspace);
	FUNC8(workspace);
	FUNC9(workspace);
}