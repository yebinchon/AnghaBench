#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ top; scalar_t__ right; scalar_t__ bottom; scalar_t__ left; } ;
struct workspace_config {scalar_t__ gaps_inner; TYPE_4__* outputs; TYPE_3__ gaps_outer; } ;
struct TYPE_9__ {scalar_t__ top; scalar_t__ right; scalar_t__ bottom; scalar_t__ left; } ;
struct sway_workspace {scalar_t__ gaps_inner; int /*<<< orphan*/  node; void* output_priority; TYPE_2__ gaps_outer; void* tiling; void* floating; int /*<<< orphan*/  layout; int /*<<< orphan*/  prev_split_layout; int /*<<< orphan*/ * name; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
struct TYPE_14__ {scalar_t__ gaps_inner; TYPE_2__ gaps_outer; } ;
struct TYPE_12__ {int /*<<< orphan*/  new_node; } ;
struct TYPE_13__ {TYPE_5__ events; } ;
struct TYPE_11__ {int length; char** items; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  L_NONE ; 
 int /*<<< orphan*/  N_WORKSPACE ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct sway_workspace* FUNC0 (int,int) ; 
 TYPE_7__* config ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_output*,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_output*) ; 
 TYPE_6__* root ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct workspace_config* FUNC12 (char const*) ; 
 struct sway_output* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct sway_workspace*,struct sway_output*) ; 

struct sway_workspace *FUNC15(struct sway_output *output,
		const char *name) {
	if (output == NULL) {
		output = FUNC13(name);
	}

	FUNC10(SWAY_DEBUG, "Adding workspace %s for output %s", name,
			output->wlr_output->name);

	struct sway_workspace *ws = FUNC0(1, sizeof(struct sway_workspace));
	if (!ws) {
		FUNC10(SWAY_ERROR, "Unable to allocate sway_workspace");
		return NULL;
	}
	FUNC4(&ws->node, N_WORKSPACE, ws);
	ws->name = name ? FUNC9(name) : NULL;
	ws->prev_split_layout = L_NONE;
	ws->layout = FUNC6(output);
	ws->floating = FUNC1();
	ws->tiling = FUNC1();
	ws->output_priority = FUNC1();

	ws->gaps_outer = config->gaps_outer;
	ws->gaps_inner = config->gaps_inner;
	if (name) {
		struct workspace_config *wsc = FUNC12(name);
		if (wsc) {
			if (wsc->gaps_outer.top != INT_MIN) {
				ws->gaps_outer.top = wsc->gaps_outer.top;
			}
			if (wsc->gaps_outer.right != INT_MIN) {
				ws->gaps_outer.right = wsc->gaps_outer.right;
			}
			if (wsc->gaps_outer.bottom != INT_MIN) {
				ws->gaps_outer.bottom = wsc->gaps_outer.bottom;
			}
			if (wsc->gaps_outer.left != INT_MIN) {
				ws->gaps_outer.left = wsc->gaps_outer.left;
			}
			if (wsc->gaps_inner != INT_MIN) {
				ws->gaps_inner = wsc->gaps_inner;
			}

			// Add output priorities
			for (int i = 0; i < wsc->outputs->length; ++i) {
				char *name = wsc->outputs->items[i];
				if (FUNC8(name, "*") != 0) {
					FUNC3(ws->output_priority, FUNC9(name));
				}
			}
		}
	}

	// If not already added, add the output to the lowest priority
	FUNC14(ws, output);

	FUNC5(output, ws);
	FUNC7(output);

	FUNC2(NULL, ws, "init");
	FUNC11(&root->events.new_node, &ws->node);

	return ws;
}