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
struct sway_workspace {int /*<<< orphan*/  output; int /*<<< orphan*/  node; } ;
struct sway_seat {int dummy; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 struct sway_seat* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct sway_workspace* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sway_workspace* FUNC7 (struct sway_seat*) ; 

__attribute__((used)) static void FUNC8(struct sway_workspace *workspace,
		void *data) {
	json_object *workspace_json = FUNC1(&workspace->node);
	// override the default focused indicator because
	// it's set differently for the get_workspaces reply
	struct sway_seat *seat = FUNC0();
	struct sway_workspace *focused_ws = FUNC7(seat);
	bool focused = workspace == focused_ws;
	FUNC5(workspace_json, "focused");
	FUNC4(workspace_json, "focused",
			FUNC3(focused));
	FUNC2((json_object *)data, workspace_json);

	focused_ws = FUNC6(workspace->output);
	bool visible = workspace == focused_ws;
	FUNC4(workspace_json, "visible",
			FUNC3(visible));
}