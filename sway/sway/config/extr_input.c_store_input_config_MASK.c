#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct input_config {char* identifier; int /*<<< orphan*/ * xkb_file; int /*<<< orphan*/  xkb_file_is_set; } ;
struct TYPE_5__ {struct input_config** items; } ;
typedef  TYPE_1__ list_t ;
struct TYPE_6__ {TYPE_1__* input_configs; TYPE_1__* input_type_configs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC0 (struct input_config*) ; 
 int /*<<< orphan*/  input_identifier_cmp ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct input_config*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_config*,struct input_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_config*) ; 
 struct input_config* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_config*,char**) ; 
 int /*<<< orphan*/  FUNC12 (struct input_config*,char**) ; 
 int /*<<< orphan*/  FUNC13 (struct input_config*,struct input_config*,char**) ; 

struct input_config *FUNC14(struct input_config *ic,
		char **error) {
	bool wildcard = FUNC7(ic->identifier, "*") == 0;
	if (wildcard && error && !FUNC12(ic, error)) {
		return NULL;
	}

	bool type = FUNC9(ic->identifier, "type:", FUNC8("type:")) == 0;
	if (type && error && !FUNC11(ic, error)) {
		return NULL;
	}

	list_t *config_list = type ? config->input_type_configs
		: config->input_configs;

	struct input_config *current = NULL;
	bool new_current = false;

	int i = FUNC2(config_list, input_identifier_cmp, ic->identifier);
	if (i >= 0) {
		current = config_list->items[i];
	}

	i = FUNC2(config->input_configs, input_identifier_cmp, "*");
	if (!current && i >= 0) {
		current = FUNC6(ic->identifier);
		FUNC3(current, config->input_configs->items[i]);
		new_current = true;
	}

	if (error && !FUNC13(current, ic, error)) {
		if (new_current) {
			FUNC0(current);
		}
		return NULL;
	}

	if (wildcard) {
		FUNC5(ic);
	}

	if (type) {
		FUNC4(ic);
	}

	if (current) {
		FUNC3(current, ic);
		FUNC0(ic);
		ic = current;
	}

	ic->xkb_file_is_set = ic->xkb_file != NULL;

	if (!current || new_current) {
		FUNC1(config_list, ic);
	}

	FUNC10(SWAY_DEBUG, "Config stored for input %s", ic->identifier);

	return ic;
}