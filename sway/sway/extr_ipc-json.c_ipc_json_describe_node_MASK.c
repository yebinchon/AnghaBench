#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wlr_box {size_t y; size_t height; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int type; int /*<<< orphan*/  sway_workspace; int /*<<< orphan*/  sway_container; int /*<<< orphan*/  sway_output; scalar_t__ id; } ;
struct focus_inactive_data {int /*<<< orphan*/ * object; struct sway_node* node; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_2__ {size_t length; } ;

/* Variables and functions */
 scalar_t__ L_STACKED ; 
#define  N_CONTAINER 131 
#define  N_OUTPUT 130 
#define  N_ROOT 129 
#define  N_WORKSPACE 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  focus_inactive_children_iterator ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wlr_box*) ; 
 struct sway_seat* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int,char*,int,int /*<<< orphan*/ *,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sway_node*,struct wlr_box*) ; 
 char* FUNC11 (struct sway_node*) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC12 (struct sway_seat*,int /*<<< orphan*/ ,struct focus_inactive_data*) ; 
 struct sway_node* FUNC13 (struct sway_seat*) ; 

json_object *FUNC14(struct sway_node *node) {
	struct sway_seat *seat = FUNC3();
	bool focused = FUNC13(seat) == node;
	char *name = FUNC11(node);

	struct wlr_box box;
	FUNC10(node, &box);
	if (node->type == N_CONTAINER) {
		struct wlr_box deco_rect = {0, 0, 0, 0};
		FUNC2(node->sway_container, &deco_rect);
		size_t count = 1;
		if (FUNC1(node->sway_container) == L_STACKED) {
			count = FUNC0(node->sway_container)->length;
		}
		box.y += deco_rect.height * count;
		box.height -= deco_rect.height * count;
	}

	json_object *focus = FUNC9();
	struct focus_inactive_data data = {
		.node = node,
		.object = focus,
	};
	FUNC12(seat, focus_inactive_children_iterator, &data);

	json_object *object = FUNC4(
				(int)node->id, name, focused, focus, &box);

	switch (node->type) {
	case N_ROOT:
		FUNC7(root, object);
		break;
	case N_OUTPUT:
		FUNC6(node->sway_output, object);
		break;
	case N_CONTAINER:
		FUNC5(node->sway_container, object);
		break;
	case N_WORKSPACE:
		FUNC8(node->sway_workspace, object);
		break;
	}

	return object;
}