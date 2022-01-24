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
struct sway_output {int dummy; } ;
struct sway_container {struct sway_workspace* workspace; scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 struct sway_output* FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*,scalar_t__,scalar_t__) ; 
 struct sway_output* FUNC4 (struct sway_container*) ; 
 scalar_t__ FUNC5 (struct sway_container*) ; 
 struct sway_workspace* FUNC6 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_output*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_workspace*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_workspace*) ; 

void FUNC10(struct sway_container *con,
		double lx, double ly) {
	if (!FUNC7(FUNC4(con),
			"Expected a floating container")) {
		return;
	}
	FUNC3(con, lx - con->x, ly - con->y);
	if (FUNC5(con)) {
		return;
	}
	struct sway_workspace *old_workspace = con->workspace;
	struct sway_output *new_output = FUNC2(con);
	if (!FUNC7(new_output, "Unable to find any output")) {
		return;
	}
	struct sway_workspace *new_workspace =
		FUNC6(new_output);
	if (new_workspace && old_workspace != new_workspace) {
		FUNC1(con);
		FUNC8(new_workspace, con);
		FUNC0(old_workspace);
		FUNC0(new_workspace);
		FUNC9(old_workspace);
		FUNC9(new_workspace);
	}
}