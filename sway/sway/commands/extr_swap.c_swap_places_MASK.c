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
struct sway_container {int /*<<< orphan*/  workspace; scalar_t__ parent; int /*<<< orphan*/  height_fraction; int /*<<< orphan*/  width_fraction; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct sway_container*,int) ; 
 int FUNC1 (struct sway_container*) ; 
 int FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 struct sway_container* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sway_container*,int) ; 

__attribute__((used)) static void FUNC7(struct sway_container *con1,
		struct sway_container *con2) {
	struct sway_container *temp = FUNC4(sizeof(struct sway_container));
	temp->x = con1->x;
	temp->y = con1->y;
	temp->width = con1->width;
	temp->height = con1->height;
	temp->width_fraction = con1->width_fraction;
	temp->height_fraction = con1->height_fraction;
	temp->parent = con1->parent;
	temp->workspace = con1->workspace;
	bool temp_floating = FUNC1(con1);

	con1->x = con2->x;
	con1->y = con2->y;
	con1->width = con2->width;
	con1->height = con2->height;
	con1->width_fraction = con2->width_fraction;
	con1->height_fraction = con2->height_fraction;

	con2->x = temp->x;
	con2->y = temp->y;
	con2->width = temp->width;
	con2->height = temp->height;
	con2->width_fraction = temp->width_fraction;
	con2->height_fraction = temp->height_fraction;

	int temp_index = FUNC2(con1);
	if (con2->parent) {
		FUNC0(con2->parent, con1,
				FUNC2(con2));
	} else if (FUNC1(con2)) {
		FUNC5(con2->workspace, con1);
	} else {
		FUNC6(con2->workspace, con1,
				FUNC2(con2));
	}
	if (temp->parent) {
		FUNC0(temp->parent, con2, temp_index);
	} else if (temp_floating) {
		FUNC5(temp->workspace, con2);
	} else {
		FUNC6(temp->workspace, con2, temp_index);
	}

	FUNC3(temp);
}