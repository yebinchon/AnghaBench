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
struct sway_container {scalar_t__ fullscreen_mode; int /*<<< orphan*/  node; scalar_t__ workspace; struct sway_container* parent; int /*<<< orphan*/  children; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,int /*<<< orphan*/  (*) (struct sway_container*,int*),int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*,int*) ; 

void FUNC8(struct sway_container *parent,
		struct sway_container *child) {
	if (child->workspace) {
		FUNC0(child);
	}
	FUNC4(parent->children, child);
	child->parent = parent;
	child->workspace = parent->workspace;
	FUNC1(child, set_workspace, NULL);
	bool fullscreen = child->fullscreen_mode != FULLSCREEN_NONE ||
		parent->fullscreen_mode != FULLSCREEN_NONE;
	FUNC6(child, &fullscreen);
	FUNC1(child, set_fullscreen_iterator, &fullscreen);
	FUNC2(child);
	FUNC3(parent);
	FUNC5(&child->node);
	FUNC5(&parent->node);
}