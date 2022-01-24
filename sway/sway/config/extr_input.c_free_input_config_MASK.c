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
struct input_config {struct input_config* mapped_to_region; struct input_config* mapped_to_output; struct input_config* mapped_from_region; struct input_config* xkb_variant; struct input_config* xkb_rules; struct input_config* xkb_options; struct input_config* xkb_model; struct input_config* xkb_layout; struct input_config* xkb_file; struct input_config* identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_config*) ; 

void FUNC1(struct input_config *ic) {
	if (!ic) {
		return;
	}
	FUNC0(ic->identifier);
	FUNC0(ic->xkb_file);
	FUNC0(ic->xkb_layout);
	FUNC0(ic->xkb_model);
	FUNC0(ic->xkb_options);
	FUNC0(ic->xkb_rules);
	FUNC0(ic->xkb_variant);
	FUNC0(ic->mapped_from_region);
	FUNC0(ic->mapped_to_output);
	FUNC0(ic->mapped_to_region);
	FUNC0(ic);
}