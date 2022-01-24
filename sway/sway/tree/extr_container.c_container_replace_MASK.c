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
struct sway_container {int fullscreen_mode; int scratchpad; float width_fraction; float height_fraction; struct sway_workspace* workspace; scalar_t__ parent; } ;
typedef  enum sway_fullscreen_mode { ____Placeholder_sway_fullscreen_mode } sway_fullscreen_mode ;

/* Variables and functions */
#define  FULLSCREEN_GLOBAL 130 
#define  FULLSCREEN_NONE 129 
#define  FULLSCREEN_WORKSPACE 128 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*) ; 

void FUNC8(struct sway_container *container,
		struct sway_container *replacement) {
	enum sway_fullscreen_mode fullscreen = container->fullscreen_mode;
	bool scratchpad = container->scratchpad;
	struct sway_workspace *ws = NULL;
	if (fullscreen != FULLSCREEN_NONE) {
		FUNC2(container);
	}
	if (scratchpad) {
		ws = container->workspace;
		FUNC7(container);
		FUNC6(container);
	}
	if (container->parent || container->workspace) {
		float width_fraction = container->width_fraction;
		float height_fraction = container->height_fraction;
		FUNC0(container, replacement, 1);
		FUNC1(container);
		replacement->width_fraction = width_fraction;
		replacement->height_fraction = height_fraction;
	}
	if (scratchpad) {
		FUNC5(replacement, ws);
	}
	switch (fullscreen) {
	case FULLSCREEN_WORKSPACE:
		FUNC4(replacement);
		break;
	case FULLSCREEN_GLOBAL:
		FUNC3(replacement);
		break;
	case FULLSCREEN_NONE:
		// noop
		break;
	}
}