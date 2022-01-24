#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wlr_box {int dummy; } ;
struct sway_container {int dummy; } ;
struct TYPE_7__ {int length; struct sway_container** items; } ;
typedef  TYPE_1__ list_t ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;

/* Variables and functions */
#define  L_HORIZ 132 
#define  L_NONE 131 
#define  L_STACKED 130 
#define  L_TABBED 129 
#define  L_VERT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 

__attribute__((used)) static void FUNC5(list_t *children,
		enum sway_container_layout layout, struct wlr_box *parent) {
	// Calculate x, y, width and height of children
	switch (layout) {
	case L_HORIZ:
		FUNC0(children, parent);
		break;
	case L_VERT:
		FUNC3(children, parent);
		break;
	case L_TABBED:
		FUNC2(children, parent);
		break;
	case L_STACKED:
		FUNC1(children, parent);
		break;
	case L_NONE:
		FUNC0(children, parent);
		break;
	}

	// Recurse into child containers
	for (int i = 0; i < children->length; ++i) {
		struct sway_container *child = children->items[i];
		FUNC4(child);
	}
}