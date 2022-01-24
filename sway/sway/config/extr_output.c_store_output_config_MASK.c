#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct output_config {char* name; int /*<<< orphan*/  dpms_state; int /*<<< orphan*/  background_option; int /*<<< orphan*/  background; int /*<<< orphan*/  transform; int /*<<< orphan*/  subpixel; int /*<<< orphan*/  scale; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  refresh_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  enabled; } ;
struct TYPE_5__ {TYPE_1__* output_configs; } ;
struct TYPE_4__ {struct output_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC0 (struct output_config*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct output_config*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct output_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct output_config*,struct output_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct output_config*) ; 
 struct output_config* FUNC6 (char*) ; 
 int /*<<< orphan*/  output_name_cmp ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

struct output_config *FUNC10(struct output_config *oc) {
	bool wildcard = FUNC7(oc->name, "*") == 0;
	if (wildcard) {
		FUNC5(oc);
	} else {
		FUNC3(oc);
	}

	int i = FUNC2(config->output_configs, output_name_cmp, oc->name);
	if (i >= 0) {
		FUNC8(SWAY_DEBUG, "Merging on top of existing output config");
		struct output_config *current = config->output_configs->items[i];
		FUNC4(current, oc);
		FUNC0(oc);
		oc = current;
	} else if (!wildcard) {
		FUNC8(SWAY_DEBUG, "Adding non-wildcard output config");
		i = FUNC2(config->output_configs, output_name_cmp, "*");
		if (i >= 0) {
			FUNC8(SWAY_DEBUG, "Merging on top of output * config");
			struct output_config *current = FUNC6(oc->name);
			FUNC4(current, config->output_configs->items[i]);
			FUNC4(current, oc);
			FUNC0(oc);
			oc = current;
		}
		FUNC1(config->output_configs, oc);
	} else {
		// New wildcard config. Just add it
		FUNC8(SWAY_DEBUG, "Adding output * config");
		FUNC1(config->output_configs, oc);
	}

	FUNC8(SWAY_DEBUG, "Config stored for output %s (enabled: %d) (%dx%d@%fHz "
		"position %d,%d scale %f subpixel %s transform %d) (bg %s %s) (dpms %d)",
		oc->name, oc->enabled, oc->width, oc->height, oc->refresh_rate,
		oc->x, oc->y, oc->scale, FUNC9(oc->subpixel),
		oc->transform, oc->background, oc->background_option, oc->dpms_state);

	return oc;
}