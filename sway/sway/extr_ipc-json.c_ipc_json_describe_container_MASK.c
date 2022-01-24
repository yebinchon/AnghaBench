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
struct wlr_box {double width; double height; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct sway_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  border_thickness; int /*<<< orphan*/  border; } ;
struct sway_container {char* title; int is_sticky; scalar_t__ view; TYPE_1__ current; scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  node; int /*<<< orphan*/  fullscreen_mode; int /*<<< orphan*/  layout; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int FUNC0 (struct sway_container*) ; 
 scalar_t__ FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,struct wlr_box*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_container*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (double) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sway_node*,struct wlr_box*) ; 
 struct sway_node* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (scalar_t__) ; 

__attribute__((used)) static void FUNC17(struct sway_container *c, json_object *object) {
	FUNC13(object, "name",
			c->title ? FUNC12(c->title) : NULL);
	FUNC13(object, "type",
			FUNC12(FUNC1(c) ? "floating_con" : "con"));

	FUNC13(object, "layout",
			FUNC12(
				FUNC6(c->layout)));

	FUNC13(object, "orientation",
			FUNC12(
				FUNC7(c->layout)));

	bool urgent = c->view ?
		FUNC16(c->view) : FUNC0(c);
	FUNC13(object, "urgent", FUNC9(urgent));
	FUNC13(object, "sticky", FUNC9(c->is_sticky));

	FUNC13(object, "fullscreen_mode",
			FUNC11(c->fullscreen_mode));

	struct sway_node *parent = FUNC15(&c->node);
	struct wlr_box parent_box = {0, 0, 0, 0};

	if (parent != NULL) {
		FUNC14(parent, &parent_box);
	}

	if (parent_box.width != 0 && parent_box.height != 0) {
		double percent = ((double)c->width / parent_box.width)
				* ((double)c->height / parent_box.height);
		FUNC13(object, "percent", FUNC10(percent));
	}

	FUNC13(object, "border",
			FUNC12(
				FUNC3(c->current.border)));
	FUNC13(object, "current_border_width",
			FUNC11(c->current.border_thickness));
	FUNC13(object, "floating_nodes", FUNC8());

	struct wlr_box deco_box = {0, 0, 0, 0};
	FUNC2(c, &deco_box);
	FUNC13(object, "deco_rect", FUNC4(&deco_box));

	if (c->view) {
		FUNC5(c, object);
	}
}