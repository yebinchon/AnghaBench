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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM ; 
 int ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT ; 
 int ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT ; 
 int ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

uint32_t FUNC2(const char *position) {
	uint32_t horiz = ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT |
		ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT;
	if (FUNC0("top", position) == 0) {
		return ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP | horiz;
	} else if (FUNC0("bottom", position) == 0) {
		return ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM | horiz;
	} else {
		FUNC1(SWAY_ERROR, "Invalid position: %s, defaulting to bottom", position);
		return ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM | horiz;
	}
}