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
struct sway_container {int scratchpad; } ;
struct TYPE_2__ {int /*<<< orphan*/  scratchpad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sway_container*) ; 
 TYPE_1__* root ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(struct sway_container *con) {
	if (!FUNC3(con->scratchpad, "Container is not in scratchpad")) {
		return;
	}
	con->scratchpad = false;
	int index = FUNC2(root->scratchpad, con);
	if (index != -1) {
		FUNC1(root->scratchpad, index);
		FUNC0(con, "move");
	}
}