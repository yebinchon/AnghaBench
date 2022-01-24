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
struct sway_workspace {int /*<<< orphan*/  node; } ;
struct sway_seat {char* prev_workspace_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct sway_container {int scratchpad; int fullscreen_mode; TYPE_3__* workspace; TYPE_1__ node; } ;
typedef  enum sway_fullscreen_mode { ____Placeholder_sway_fullscreen_mode } sway_fullscreen_mode ;
struct TYPE_6__ {struct sway_seat* seat; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,struct sway_container*) ; 
 int FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct sway_workspace* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 struct sway_container* FUNC10 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct sway_container*,struct sway_container*,struct sway_seat*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC14 (struct sway_container*,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_workspace*) ; 

void FUNC18(struct sway_container *con1, struct sway_container *con2) {
	if (!FUNC15(con1 && con2, "Cannot swap with nothing")) {
		return;
	}
	if (!FUNC15(!FUNC1(con1, con2)
				&& !FUNC1(con2, con1),
				"Cannot swap ancestor and descendant")) {
		return;
	}

	FUNC16(SWAY_DEBUG, "Swapping containers %zu and %zu",
			con1->node.id, con2->node.id);

	bool scratch1 = con1->scratchpad;
	bool hidden1 = FUNC2(con1);
	bool scratch2 = con2->scratchpad;
	bool hidden2 = FUNC2(con2);
	if (scratch1) {
		if (hidden1) {
			FUNC8(con1);
		}
		FUNC7(con1);
	}
	if (scratch2) {
		if (hidden2) {
			FUNC8(con2);
		}
		FUNC7(con2);
	}

	enum sway_fullscreen_mode fs1 = con1->fullscreen_mode;
	enum sway_fullscreen_mode fs2 = con2->fullscreen_mode;
	if (fs1) {
		FUNC0(con1);
	}
	if (fs2) {
		FUNC0(con2);
	}

	struct sway_seat *seat = config->handler_context.seat;
	struct sway_container *focus = FUNC10(seat);
	struct sway_workspace *vis1 =
		FUNC5(con1->workspace->output);
	struct sway_workspace *vis2 =
		FUNC5(con2->workspace->output);
	if (!FUNC15(vis1 && vis2, "con1 or con2 are on an output without a"
				"workspace. This should not happen")) {
		return;
	}

	char *stored_prev_name = NULL;
	if (seat->prev_workspace_name) {
		stored_prev_name = FUNC12(seat->prev_workspace_name);
	}

	FUNC14(con1, con2);

	if (!FUNC17(vis1)) {
		FUNC11(seat, FUNC9(seat, &vis1->node));
	}
	if (!FUNC17(vis2)) {
		FUNC11(seat, FUNC9(seat, &vis2->node));
	}

	FUNC13(con1, con2, seat, focus);

	if (stored_prev_name) {
		FUNC4(seat->prev_workspace_name);
		seat->prev_workspace_name = stored_prev_name;
	}

	if (scratch1) {
		FUNC6(con2, NULL);
		if (!hidden1) {
			FUNC8(con2);
		}
	}
	if (scratch2) {
		FUNC6(con1, NULL);
		if (!hidden2) {
			FUNC8(con1);
		}
	}

	if (fs1) {
		FUNC3(con2, fs1);
	}
	if (fs2) {
		FUNC3(con1, fs2);
	}
}