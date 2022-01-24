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
struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*) ; 
 struct sway_container* FUNC2 (struct sway_seat*,struct sway_workspace*) ; 
 struct sway_container* FUNC3 (struct sway_seat*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_seat*,struct sway_container*) ; 

__attribute__((used)) static struct cmd_results *FUNC5(struct sway_workspace *ws,
		struct sway_seat *seat, bool floating) {
	struct sway_container *new_focus = NULL;
	if (floating) {
		new_focus = FUNC2(seat, ws);
	} else {
		new_focus = FUNC3(seat, ws);
	}
	if (new_focus) {
		FUNC4(seat, new_focus);
		FUNC1(seat);
	} else {
		return FUNC0(CMD_FAILURE,
				"Failed to find a %s container in workspace",
				floating ? "floating" : "tiling");
	}
	return FUNC0(CMD_SUCCESS, NULL);
}