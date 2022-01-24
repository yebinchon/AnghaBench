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
struct sway_workspace {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct sway_seat {int dummy; } ;
struct sway_container {scalar_t__ height_fraction; scalar_t__ width_fraction; int /*<<< orphan*/  saved_border; int /*<<< orphan*/  border; TYPE_1__* view; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ scratchpad; struct sway_container* parent; struct sway_workspace* workspace; } ;
struct TYPE_2__ {scalar_t__ using_csd; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_CSD ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 int FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*) ; 
 struct sway_seat* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_container*) ; 
 struct sway_container* FUNC10 (struct sway_seat*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC13 (struct sway_workspace*,struct sway_container*) ; 

void FUNC14(struct sway_container *container, bool enable) {
	if (FUNC5(container) == enable) {
		return;
	}

	struct sway_seat *seat = FUNC7();
	struct sway_workspace *workspace = container->workspace;

	if (enable) {
		struct sway_container *old_parent = container->parent;
		FUNC1(container);
		FUNC12(workspace, container);
		if (container->view) {
			FUNC11(container->view, false);
			if (container->view->using_csd) {
				container->border = B_CSD;
			}
		}
		FUNC4(container);
		FUNC3(container);
		if (old_parent) {
			FUNC6(old_parent);
		}
	} else {
		// Returning to tiled
		if (container->scratchpad) {
			FUNC9(container);
		}
		FUNC1(container);
		struct sway_container *reference =
			FUNC10(seat, workspace);
		if (reference) {
			FUNC0(reference, container, 1);
			container->width = reference->width;
			container->height = reference->height;
		} else {
			FUNC13(workspace, container);
			container->width = workspace->width;
			container->height = workspace->height;
		}
		if (container->view) {
			FUNC11(container->view, true);
			if (container->view->using_csd) {
				container->border = container->saved_border;
			}
		}
		container->width_fraction = 0;
		container->height_fraction = 0;
	}

	FUNC2(container);

	FUNC8(container, "floating");
}