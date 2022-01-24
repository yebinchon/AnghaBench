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
struct swaybar_output {int /*<<< orphan*/ * xdg_output; int /*<<< orphan*/  output; TYPE_1__* bar; } ;
struct TYPE_2__ {int /*<<< orphan*/ * xdg_output_manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdg_output_listener ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct swaybar_output*) ; 

__attribute__((used)) static void FUNC3(struct swaybar_output *output) {
	if (output->xdg_output != NULL) {
		return;
	}
	FUNC0(output->bar->xdg_output_manager != NULL);
	output->xdg_output = FUNC1(
		output->bar->xdg_output_manager, output->output);
	FUNC2(output->xdg_output, &xdg_output_listener,
		output);
}