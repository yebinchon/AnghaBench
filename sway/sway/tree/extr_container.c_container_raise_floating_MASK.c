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
struct sway_container {TYPE_1__* workspace; struct sway_container* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; int /*<<< orphan*/  floating; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct sway_container *con) {
	// Bring container to front by putting it at the end of the floating list.
	struct sway_container *floater = con;
	while (floater->parent) {
		floater = floater->parent;
	}
	if (FUNC0(floater) && floater->workspace) {
		FUNC1(floater->workspace->floating, floater);
		FUNC2(&floater->workspace->node);
	}
}