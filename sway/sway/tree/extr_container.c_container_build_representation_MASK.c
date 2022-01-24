#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_container {char* formatted_title; scalar_t__ view; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef  TYPE_1__ list_t ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;

/* Variables and functions */
#define  L_HORIZ 132 
#define  L_NONE 131 
#define  L_STACKED 130 
#define  L_TABBED 129 
#define  L_VERT 128 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 

size_t FUNC4(enum sway_container_layout layout,
		list_t *children, char *buffer) {
	size_t len = 2;
	switch (layout) {
	case L_VERT:
		FUNC0(buffer, "V[");
		break;
	case L_HORIZ:
		FUNC0(buffer, "H[");
		break;
	case L_TABBED:
		FUNC0(buffer, "T[");
		break;
	case L_STACKED:
		FUNC0(buffer, "S[");
		break;
	case L_NONE:
		FUNC0(buffer, "D[");
		break;
	}
	for (int i = 0; i < children->length; ++i) {
		if (i != 0) {
			++len;
			FUNC0(buffer, " ");
		}
		struct sway_container *child = children->items[i];
		const char *identifier = NULL;
		if (child->view) {
			identifier = FUNC3(child->view);
			if (!identifier) {
				identifier = FUNC2(child->view);
			}
		} else {
			identifier = child->formatted_title;
		}
		if (identifier) {
			len += FUNC1(identifier);
			FUNC0(buffer, identifier);
		} else {
			len += 6;
			FUNC0(buffer, "(null)");
		}
	}
	++len;
	FUNC0(buffer, "]");
	return len;
}