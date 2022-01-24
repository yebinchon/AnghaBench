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
struct wlr_surface {int dummy; } ;
struct sway_seat {int has_focus; } ;
struct sway_node {int dummy; } ;

/* Variables and functions */
 struct sway_node* FUNC0 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,struct wlr_surface*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_node*,struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,struct wlr_surface*) ; 

void FUNC4(struct sway_seat *seat,
		struct wlr_surface *surface, bool unfocus) {
	if (seat->has_focus && unfocus) {
		struct sway_node *focus = FUNC0(seat);
		FUNC2(focus, seat);
		seat->has_focus = false;
	}
	FUNC1(seat, surface);
	FUNC3(seat, surface);
}