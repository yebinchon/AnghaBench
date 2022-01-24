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
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;

/* Variables and functions */
 int L_HORIZ ; 
 int L_NONE ; 
 int L_STACKED ; 
 int L_TABBED ; 
 int L_VERT ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static enum sway_container_layout FUNC1(char *s) {
	if (FUNC0(s, "splith") == 0) {
		return L_HORIZ;
	} else if (FUNC0(s, "splitv") == 0) {
		return L_VERT;
	} else if (FUNC0(s, "tabbed") == 0) {
		return L_TABBED;
	} else if (FUNC0(s, "stacking") == 0) {
		return L_STACKED;
	}
	return L_NONE;
}