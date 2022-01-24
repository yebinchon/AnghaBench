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
struct sway_node {scalar_t__ destroying; } ;
struct sway_workspace {struct sway_container* fullscreen; struct sway_node node; } ;
struct sway_view {struct sway_container* container; } ;
struct sway_seat {int dummy; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_container* parent; struct sway_node node; struct sway_workspace* workspace; int /*<<< orphan*/  is_sticky; } ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_2__ {struct sway_container* fullscreen_global; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_GLOBAL ; 
 int L_STACKED ; 
 int L_TABBED ; 
 scalar_t__ FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,struct sway_container*) ; 
 int FUNC3 (struct sway_container*) ; 
 struct sway_seat* FUNC4 () ; 
 TYPE_1__* root ; 
 struct sway_node* FUNC5 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*) ; 

bool FUNC7(struct sway_view *view) {
	if (view->container->node.destroying) {
		return false;
	}
	struct sway_workspace *workspace = view->container->workspace;
	if (!workspace && view->container->fullscreen_mode != FULLSCREEN_GLOBAL) {
		bool fs_global_descendant = false;
		struct sway_container *parent = view->container->parent;
		while (parent) {
			if (parent->fullscreen_mode == FULLSCREEN_GLOBAL) {
				fs_global_descendant = true;
			}
			parent = parent->parent;
		}
		if (!fs_global_descendant) {
			return false;
		}
	}
	// Determine if view is nested inside a floating container which is sticky
	struct sway_container *floater = view->container;
	while (floater->parent) {
		floater = floater->parent;
	}
	bool is_sticky = FUNC0(floater) && floater->is_sticky;
	if (!is_sticky && workspace && !FUNC6(workspace)) {
		return false;
	}
	// Check view isn't in a tabbed or stacked container on an inactive tab
	struct sway_seat *seat = FUNC4();
	struct sway_container *con = view->container;
	while (con) {
		enum sway_container_layout layout = FUNC3(con);
		if ((layout == L_TABBED || layout == L_STACKED)
				&& !FUNC0(con)) {
			struct sway_node *parent = con->parent ?
				&con->parent->node : &con->workspace->node;
			if (FUNC5(seat, parent) != &con->node) {
				return false;
			}
		}
		con = con->parent;
	}
	// Check view isn't hidden by another fullscreen view
	struct sway_container *fs = root->fullscreen_global ?
		root->fullscreen_global : workspace->fullscreen;
	if (fs && !FUNC1(view->container) &&
			!FUNC2(view->container, fs)) {
		return false;
	}
	return true;
}