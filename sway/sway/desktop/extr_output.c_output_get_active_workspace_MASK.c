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
struct sway_workspace {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_output {TYPE_1__* workspaces; int /*<<< orphan*/  node; } ;
struct sway_node {struct sway_workspace* sway_workspace; } ;
struct TYPE_2__ {struct sway_workspace** items; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 struct sway_seat* FUNC0 () ; 
 struct sway_node* FUNC1 (struct sway_seat*,int /*<<< orphan*/ *) ; 

struct sway_workspace *FUNC2(struct sway_output *output) {
	struct sway_seat *seat = FUNC0();
	struct sway_node *focus = FUNC1(seat, &output->node);
	if (!focus) {
		if (!output->workspaces->length) {
			return NULL;
		}
		return output->workspaces->items[0];
	}
	return focus->sway_workspace;
}