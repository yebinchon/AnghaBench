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
struct sway_workspace {int /*<<< orphan*/  node; int /*<<< orphan*/ * fullscreen; } ;
struct sway_container {scalar_t__ fullscreen_mode; int /*<<< orphan*/  node; struct sway_workspace* workspace; struct sway_container* parent; } ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_2__ {int /*<<< orphan*/ * fullscreen_global; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_GLOBAL ; 
 scalar_t__ FULLSCREEN_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* root ; 
 int /*<<< orphan*/  set_workspace ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*) ; 

void FUNC7(struct sway_container *child) {
	if (child->fullscreen_mode == FULLSCREEN_WORKSPACE) {
		child->workspace->fullscreen = NULL;
	}
	if (child->fullscreen_mode == FULLSCREEN_GLOBAL) {
		root->fullscreen_global = NULL;
	}

	struct sway_container *old_parent = child->parent;
	struct sway_workspace *old_workspace = child->workspace;
	list_t *siblings = FUNC1(child);
	if (siblings) {
		int index = FUNC4(siblings, child);
		if (index != -1) {
			FUNC3(siblings, index);
		}
	}
	child->parent = NULL;
	child->workspace = NULL;
	FUNC0(child, set_workspace, NULL);

	if (old_parent) {
		FUNC2(old_parent);
		FUNC5(&old_parent->node);
	} else if (old_workspace) {
		FUNC6(old_workspace);
		FUNC5(&old_workspace->node);
	}
	FUNC5(&child->node);
}