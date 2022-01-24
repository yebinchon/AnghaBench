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
struct swaybar_output {int frame_scheduled; scalar_t__ width; int /*<<< orphan*/ * layer_surface; int /*<<< orphan*/  surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct swaybar_output *output) {
	if (!output->layer_surface) {
		return;
	}
	FUNC1(output->layer_surface);
	FUNC0(output->surface, NULL, 0, 0); // detach buffer
	output->layer_surface = NULL;
	output->width = 0;
	output->frame_scheduled = false;
}