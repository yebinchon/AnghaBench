#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {int /*<<< orphan*/  node; struct sway_output* output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {TYPE_3__* wlr_output; TYPE_2__* workspaces; } ;
struct sway_node {int dummy; } ;
struct TYPE_5__ {struct sway_seat* seat; } ;
struct TYPE_8__ {TYPE_1__ handler_context; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ length; } ;

/* Variables and functions */
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*,struct sway_workspace*) ; 
 struct sway_workspace* FUNC3 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_output*) ; 
 struct sway_node* FUNC5 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_workspace*) ; 
 struct sway_workspace* FUNC10 (struct sway_output*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_workspace*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sway_workspace*,struct sway_output*,struct sway_output*) ; 

__attribute__((used)) static void FUNC14(struct sway_workspace *workspace,
		struct sway_output *output) {
	if (workspace->output == output) {
		return;
	}
	struct sway_output *old_output = workspace->output;
	FUNC11(workspace);
	struct sway_workspace *new_output_old_ws =
		FUNC3(output);
	if (!FUNC8(new_output_old_ws, "Expected output to have a workspace")) {
		return;
	}

	FUNC2(output, workspace);

	// If moving the last workspace from the old output, create a new workspace
	// on the old output
	struct sway_seat *seat = config->handler_context.seat;
	if (old_output->workspaces->length == 0) {
		char *ws_name = FUNC12(old_output->wlr_output->name);
		struct sway_workspace *ws = FUNC10(old_output, ws_name);
		FUNC0(ws_name);
		FUNC7(seat, &ws->node);
	}

	FUNC9(new_output_old_ws);

	FUNC4(output);
	struct sway_node *focus = FUNC5(seat, &workspace->node);
	FUNC6(seat, focus);
	FUNC13(workspace, old_output, output);
	FUNC1(NULL, workspace, "move");
}