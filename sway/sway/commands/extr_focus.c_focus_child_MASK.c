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
struct sway_node {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_node* node; struct sway_seat* seat; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*) ; 
 struct sway_node* FUNC2 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,struct sway_node*) ; 

__attribute__((used)) static struct cmd_results *FUNC4(void) {
	struct sway_seat *seat = config->handler_context.seat;
	struct sway_node *node = config->handler_context.node;
	struct sway_node *focus = FUNC2(seat, node);
	if (focus) {
		FUNC3(seat, focus);
		FUNC1(seat);
	}
	return FUNC0(CMD_SUCCESS, NULL);
}