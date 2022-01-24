#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  destroy; } ;
struct TYPE_7__ {int destroying; TYPE_1__ events; } ;
struct sway_container {scalar_t__ fullscreen_mode; TYPE_2__* workspace; scalar_t__ parent; scalar_t__ scratchpad; TYPE_3__ node; scalar_t__ view; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fullscreen; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_GLOBAL ; 
 scalar_t__ FULLSCREEN_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void FUNC7(struct sway_container *con) {
	if (con->view) {
		FUNC3(con, "close");
	}
	// The workspace must have the fullscreen pointer cleared so that the
	// seat code can find an appropriate new focus.
	if (con->fullscreen_mode == FULLSCREEN_WORKSPACE && con->workspace) {
		con->workspace->fullscreen = NULL;
	}
	if (con->scratchpad && con->fullscreen_mode == FULLSCREEN_GLOBAL) {
		FUNC2(con);
	}

	FUNC6(&con->node.events.destroy, &con->node);

	FUNC1(con);

	con->node.destroying = true;
	FUNC4(&con->node);

	if (con->scratchpad) {
		FUNC5(con);
	}

	if (con->fullscreen_mode == FULLSCREEN_GLOBAL) {
		FUNC2(con);
	}

	if (con->parent || con->workspace) {
		FUNC0(con);
	}
}