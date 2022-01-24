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
struct sway_container {scalar_t__ workspace; struct sway_container* parent; int /*<<< orphan*/  children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sway_container*) ; 
 int /*<<< orphan*/  set_workspace ; 

void FUNC5(struct sway_container *parent,
		struct sway_container *child, int i) {
	if (child->workspace) {
		FUNC0(child);
	}
	FUNC4(parent->children, i, child);
	child->parent = parent;
	child->workspace = parent->workspace;
	FUNC1(child, set_workspace, NULL);
	FUNC2(child);
	FUNC3(parent);
}