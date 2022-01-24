#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; TYPE_1__* sway_container; } ;
struct seatop_default_event {struct sway_node* previous_node; } ;
struct TYPE_4__ {scalar_t__ focus_follows_mouse; } ;
struct TYPE_3__ {int /*<<< orphan*/  view; } ;

/* Variables and functions */
 scalar_t__ FOLLOWS_ALWAYS ; 
 scalar_t__ N_WORKSPACE ; 
 TYPE_2__* config ; 
 struct sway_output* FUNC0 (struct sway_node*) ; 
 scalar_t__ FUNC1 (struct sway_node*) ; 
 struct sway_node* FUNC2 (struct sway_seat*) ; 
 struct sway_node* FUNC3 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_seat*,struct sway_node*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sway_seat *seat,
		struct seatop_default_event *e, struct sway_node *hovered_node) {
	struct sway_node *focus = FUNC2(seat);

	// If a workspace node is hovered (eg. in the gap area), only set focus if
	// the workspace is on a different output to the previous focus.
	if (focus && hovered_node->type == N_WORKSPACE) {
		struct sway_output *focused_output = FUNC0(focus);
		struct sway_output *hovered_output = FUNC0(hovered_node);
		if (hovered_output != focused_output) {
			FUNC4(seat, FUNC3(seat, hovered_node));
		}
		return;
	}

	// This is where we handle the common case. We don't want to focus inactive
	// tabs, hence the view_is_visible check.
	if (FUNC1(hovered_node) &&
			FUNC5(hovered_node->sway_container->view)) {
		// e->previous_node is the node which the cursor was over previously.
		// If focus_follows_mouse is yes and the cursor got over the view due
		// to, say, a workspace switch, we don't want to set the focus.
		// But if focus_follows_mouse is "always", we do.
		if (hovered_node != e->previous_node ||
				config->focus_follows_mouse == FOLLOWS_ALWAYS) {
			FUNC4(seat, hovered_node);
		}
	}
}