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
struct zxdg_output_v1 {int dummy; } ;
struct swaybar_output {int /*<<< orphan*/  surface; int /*<<< orphan*/  link; int /*<<< orphan*/ * name; struct swaybar* bar; } ;
struct swaybar {TYPE_1__* config; scalar_t__ running; int /*<<< orphan*/  compositor; int /*<<< orphan*/  outputs; int /*<<< orphan*/  unused_outputs; } ;
struct TYPE_2__ {scalar_t__ workspace_buttons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct swaybar*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct swaybar*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *data,
		struct zxdg_output_v1 *xdg_output) {
	struct swaybar_output *output = data;
	struct swaybar *bar = output->bar;

	if (!FUNC5(&output->link)) {
		return;
	}

	FUNC0(output->name != NULL);
	if (!FUNC1(output)) {
		FUNC7(&output->link);
		FUNC6(&bar->unused_outputs, &output->link);
		return;
	}

	FUNC7(&output->link);
	FUNC6(&bar->outputs, &output->link);

	output->surface = FUNC4(bar->compositor);
	FUNC0(output->surface);

	FUNC2(bar, false);

	if (bar->running && bar->config->workspace_buttons) {
		FUNC3(bar);
	}
}