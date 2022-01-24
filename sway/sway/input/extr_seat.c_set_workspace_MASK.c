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
struct sway_workspace {int /*<<< orphan*/  name; } ;
struct sway_seat {struct sway_workspace* workspace; int /*<<< orphan*/  prev_workspace_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_workspace*,struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct sway_seat *seat,
		struct sway_workspace *new_ws) {
	if (seat->workspace == new_ws) {
		return;
	}

	if (seat->workspace) {
		FUNC0(seat->prev_workspace_name);
		seat->prev_workspace_name = FUNC2(seat->workspace->name);
		if (!seat->prev_workspace_name) {
			FUNC3(SWAY_ERROR, "Unable to allocate previous workspace name");
		}
	}

	FUNC1(seat->workspace, new_ws, "focus");
	seat->workspace = new_ws;
}