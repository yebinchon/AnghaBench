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
struct sway_seat {int dummy; } ;
struct sway_container {struct sway_workspace* workspace; int /*<<< orphan*/  scratchpad; } ;

/* Variables and functions */
 struct sway_seat* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 struct sway_workspace* FUNC4 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct sway_container *con) {
	if (!FUNC5(con->scratchpad, "Container isn't in the scratchpad")) {
		return;
	}

	struct sway_seat *seat = FUNC0();
	struct sway_workspace *ws = FUNC4(seat);
	// Check if it matches a currently visible scratchpad window and hide it.
	if (con->workspace && ws == con->workspace) {
		FUNC2(con);
		return;
	}

	FUNC3(con);
	FUNC1(con, "move");
}