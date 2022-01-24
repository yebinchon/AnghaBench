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
struct sway_workspace {int dummy; } ;
struct sway_container {scalar_t__ fullscreen_mode; TYPE_1__* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_workspace* workspace; struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {scalar_t__ fullscreen_global; } ;
struct TYPE_5__ {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 scalar_t__ FULLSCREEN_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sway_workspace*) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*,int) ; 
 TYPE_3__* root ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*,int) ; 

__attribute__((used)) static struct cmd_results *FUNC7(int layout) {
	struct sway_container *con = config->handler_context.container;
	struct sway_workspace *ws = config->handler_context.workspace;
	if (con) {
		if (FUNC4(con) &&
				con->fullscreen_mode != FULLSCREEN_GLOBAL) {
			return FUNC2(CMD_FAILURE,
					"Cannot split a hidden scratchpad container");
		}
		FUNC5(con, layout);
	} else {
		FUNC6(ws, layout);
	}

	if (con && con->parent && con->parent->parent) {
		FUNC3(con->parent->parent);
	}

	if (root->fullscreen_global) {
		FUNC0();
	} else {
		FUNC1(ws);
	}

	return FUNC2(CMD_SUCCESS, NULL);
}