#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_node node; TYPE_1__* workspace; struct sway_container* parent; } ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
typedef  TYPE_2__ list_t ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_7__ {scalar_t__ focus_wrapping; } ;
struct TYPE_5__ {struct sway_output* output; } ;

/* Variables and functions */
 scalar_t__ FULLSCREEN_GLOBAL ; 
 scalar_t__ FULLSCREEN_WORKSPACE ; 
 int L_HORIZ ; 
 int L_STACKED ; 
 int L_TABBED ; 
 int L_VERT ; 
 scalar_t__ N_WORKSPACE ; 
 int WLR_DIRECTION_LEFT ; 
 int WLR_DIRECTION_RIGHT ; 
 int WLR_DIRECTION_UP ; 
 scalar_t__ WRAP_FORCE ; 
 scalar_t__ WRAP_NO ; 
 scalar_t__ WRAP_WORKSPACE ; 
 TYPE_4__* config ; 
 TYPE_2__* FUNC0 (struct sway_container*) ; 
 int FUNC1 (struct sway_container*) ; 
 int FUNC2 (struct sway_container*) ; 
 struct sway_node* FUNC3 (struct sway_output*,int) ; 
 struct sway_output* FUNC4 (struct sway_output*,int) ; 
 struct sway_container* FUNC5 (struct sway_seat*,struct sway_node*) ; 

__attribute__((used)) static struct sway_node *FUNC6(
		struct sway_container *container, struct sway_seat *seat,
		enum wlr_direction dir, bool descend) {
	struct sway_container *wrap_candidate = NULL;
	struct sway_container *current = container;
	while (current) {
		if (current->fullscreen_mode == FULLSCREEN_WORKSPACE) {
			// Fullscreen container with a direction - go straight to outputs
			struct sway_output *output = current->workspace->output;
			struct sway_output *new_output =
				FUNC4(output, dir);
			if (!new_output) {
				return NULL;
			}
			return FUNC3(new_output, dir);
		}
		if (current->fullscreen_mode == FULLSCREEN_GLOBAL) {
			return NULL;
		}

		bool can_move = false;
		int desired;
		int idx = FUNC2(current);
		enum sway_container_layout parent_layout =
			FUNC1(current);
		list_t *siblings = FUNC0(current);

		if (dir == WLR_DIRECTION_LEFT || dir == WLR_DIRECTION_RIGHT) {
			if (parent_layout == L_HORIZ || parent_layout == L_TABBED) {
				can_move = true;
				desired = idx + (dir == WLR_DIRECTION_LEFT ? -1 : 1);
			}
		} else {
			if (parent_layout == L_VERT || parent_layout == L_STACKED) {
				can_move = true;
				desired = idx + (dir == WLR_DIRECTION_UP ? -1 : 1);
			}
		}

		if (can_move) {
			if (desired < 0 || desired >= siblings->length) {
				int len = siblings->length;
				if (config->focus_wrapping != WRAP_NO && !wrap_candidate
						&& len > 1) {
					if (desired < 0) {
						wrap_candidate = siblings->items[len-1];
					} else {
						wrap_candidate = siblings->items[0];
					}
					if (config->focus_wrapping == WRAP_FORCE) {
						struct sway_container *c = FUNC5(
								seat, &wrap_candidate->node);
						return &c->node;
					}
				}
			} else {
				struct sway_container *desired_con = siblings->items[desired];
				if (!descend) {
					return &desired_con->node;
				} else {
					struct sway_container *c = FUNC5(
							seat, &desired_con->node);
					return &c->node;
				}
			}
		}

		current = current->parent;
	}

	// Check a different output
	struct sway_output *output = container->workspace->output;
	struct sway_output *new_output = FUNC4(output, dir);
	if ((config->focus_wrapping != WRAP_WORKSPACE ||
				container->node.type == N_WORKSPACE) && new_output) {
		return FUNC3(new_output, dir);
	}

	// If there is a wrap candidate, return its focus inactive view
	if (wrap_candidate) {
		struct sway_container *wrap_inactive = FUNC5(
				seat, &wrap_candidate->node);
		return &wrap_inactive->node;
	}

	return NULL;
}