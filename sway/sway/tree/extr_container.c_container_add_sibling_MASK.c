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
struct sway_container {scalar_t__ workspace; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct sway_container*) ; 
 int /*<<< orphan*/  set_workspace ; 

void FUNC7(struct sway_container *fixed,
		struct sway_container *active, bool after) {
	if (active->workspace) {
		FUNC0(active);
	}
	list_t *siblings = FUNC2(fixed);
	int index = FUNC5(siblings, fixed);
	FUNC6(siblings, index + after, active);
	active->parent = fixed->parent;
	active->workspace = fixed->workspace;
	FUNC1(active, set_workspace, NULL);
	FUNC3(active);
	FUNC4(active);
}