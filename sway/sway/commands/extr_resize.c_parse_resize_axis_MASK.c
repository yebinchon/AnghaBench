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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXIS_HORIZONTAL ; 
 int /*<<< orphan*/  AXIS_VERTICAL ; 
 int /*<<< orphan*/  WLR_EDGE_BOTTOM ; 
 int /*<<< orphan*/  WLR_EDGE_LEFT ; 
 int /*<<< orphan*/  WLR_EDGE_NONE ; 
 int /*<<< orphan*/  WLR_EDGE_RIGHT ; 
 int /*<<< orphan*/  WLR_EDGE_TOP ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static uint32_t FUNC1(const char *axis) {
	if (FUNC0(axis, "width") == 0 || FUNC0(axis, "horizontal") == 0) {
		return AXIS_HORIZONTAL;
	}
	if (FUNC0(axis, "height") == 0 || FUNC0(axis, "vertical") == 0) {
		return AXIS_VERTICAL;
	}
	if (FUNC0(axis, "up") == 0) {
		return WLR_EDGE_TOP;
	}
	if (FUNC0(axis, "down") == 0) {
		return WLR_EDGE_BOTTOM;
	}
	if (FUNC0(axis, "left") == 0) {
		return WLR_EDGE_LEFT;
	}
	if (FUNC0(axis, "right") == 0) {
		return WLR_EDGE_RIGHT;
	}
	return WLR_EDGE_NONE;
}