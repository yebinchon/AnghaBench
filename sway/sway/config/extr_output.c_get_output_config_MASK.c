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
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_output {TYPE_3__* wlr_output; } ;
struct output_config {char* name; int /*<<< orphan*/  dpms_state; int /*<<< orphan*/  background_option; int /*<<< orphan*/  background; int /*<<< orphan*/  transform; int /*<<< orphan*/  scale; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  refresh_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  enabled; } ;
struct TYPE_7__ {scalar_t__ reloading; TYPE_1__* output_configs; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {struct output_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC0 (struct output_config*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct output_config*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct output_config*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct output_config*,struct output_config*) ; 
 struct output_config* FUNC7 (char*) ; 
 int /*<<< orphan*/  output_name_cmp ; 
 int FUNC8 (char*,size_t,char*,char*,char const*) ; 
 void* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct output_config *FUNC11(char *identifier,
		struct sway_output *sway_output) {
	const char *name = sway_output->wlr_output->name;

	struct output_config *oc_id_on_name = NULL;
	struct output_config *oc_name = NULL;
	struct output_config *oc_id = NULL;

	size_t length = FUNC8(NULL, 0, "%s on %s", identifier, name) + 1;
	char *id_on_name = FUNC5(length);
	FUNC8(id_on_name, length, "%s on %s", identifier, name);
	int i = FUNC4(config->output_configs, output_name_cmp, id_on_name);
	if (i >= 0) {
		oc_id_on_name = config->output_configs->items[i];
	} else {
		i = FUNC4(config->output_configs, output_name_cmp, name);
		if (i >= 0) {
			oc_name = config->output_configs->items[i];
		}

		i = FUNC4(config->output_configs, output_name_cmp, identifier);
		if (i >= 0) {
			oc_id = config->output_configs->items[i];
		}
	}

	struct output_config *result = FUNC7("temp");
	if (config->reloading) {
		FUNC0(result, sway_output->wlr_output);
	}
	if (oc_id_on_name) {
		// Already have an identifier on name config, use that
		FUNC1(result->name);
		result->name = FUNC9(id_on_name);
		FUNC6(result, oc_id_on_name);
	} else if (oc_name && oc_id) {
		// Generate a config named `<identifier> on <name>` which contains a
		// merged copy of the identifier on name. This will make sure that both
		// identifier and name configs are respected, with identifier getting
		// priority
		struct output_config *temp = FUNC7(id_on_name);
		FUNC6(temp, oc_name);
		FUNC6(temp, oc_id);
		FUNC3(config->output_configs, temp);

		FUNC1(result->name);
		result->name = FUNC9(id_on_name);
		FUNC6(result, temp);

		FUNC10(SWAY_DEBUG, "Generated output config \"%s\" (enabled: %d)"
			" (%dx%d@%fHz position %d,%d scale %f transform %d) (bg %s %s)"
			" (dpms %d)", result->name, result->enabled, result->width,
			result->height, result->refresh_rate, result->x, result->y,
			result->scale, result->transform, result->background,
			result->background_option, result->dpms_state);
	} else if (oc_name) {
		// No identifier config, just return a copy of the name config
		FUNC1(result->name);
		result->name = FUNC9(name);
		FUNC6(result, oc_name);
	} else if (oc_id) {
		// No name config, just return a copy of the identifier config
		FUNC1(result->name);
		result->name = FUNC9(identifier);
		FUNC6(result, oc_id);
	} else {
		i = FUNC4(config->output_configs, output_name_cmp, "*");
		if (i >= 0) {
			// No name or identifier config, but there is a wildcard config
			FUNC1(result->name);
			result->name = FUNC9("*");
			FUNC6(result, config->output_configs->items[i]);
		} else if (!config->reloading) {
			// No name, identifier, or wildcard config. Since we are not
			// reloading with defaults, the output config will be empty, so
			// just return NULL
			FUNC2(result);
			result = NULL;
		}
	}

	FUNC1(id_on_name);
	return result;
}