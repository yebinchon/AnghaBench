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
struct sway_workspace {int dummy; } ;
struct sway_container {struct sway_workspace* workspace; scalar_t__ view; scalar_t__ height_fraction; scalar_t__ width_fraction; scalar_t__ height; scalar_t__ width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 scalar_t__ FUNC3 (struct sway_container*,struct sway_container*) ; 
 scalar_t__ FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_workspace*) ; 

__attribute__((used)) static void FUNC9(struct sway_container *container,
		struct sway_container *destination) {
	if (container == destination
			|| FUNC3(container, destination)
			|| FUNC3(destination, container)) {
		return;
	}
	if (FUNC4(container)) {
		FUNC5(container, destination->workspace);
		return;
	}
	struct sway_workspace *old_workspace = container->workspace;

	FUNC2(container);
	container->width = container->height = 0;
	container->width_fraction = container->height_fraction = 0;

	if (destination->view) {
		FUNC1(destination, container, 1);
	} else {
		FUNC0(destination, container);
	}

	if (container->view) {
		FUNC6(container, "move");
	}

	FUNC8(destination->workspace);

	// Update workspace urgent state
	FUNC7(destination->workspace);
	if (old_workspace && old_workspace != destination->workspace) {
		FUNC7(old_workspace);
	}
}