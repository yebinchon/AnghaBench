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
struct TYPE_4__ {int destroying; } ;
struct sway_output {TYPE_1__* wlr_output; int /*<<< orphan*/  link; TYPE_2__ node; int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sway_output *output) {
	if (!FUNC1(!output->enabled, "Expected a disabled output")) {
		return;
	}
	FUNC2(SWAY_DEBUG, "Destroying output '%s'", output->wlr_output->name);

	output->node.destroying = true;
	FUNC0(&output->node);

	FUNC3(&output->link);
	output->wlr_output->data = NULL;
	output->wlr_output = NULL;
}