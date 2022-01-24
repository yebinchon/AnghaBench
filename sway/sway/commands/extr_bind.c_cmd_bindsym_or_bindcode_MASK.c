#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct sway_binding {int group; int flags; scalar_t__ type; scalar_t__ order; int /*<<< orphan*/  command; TYPE_4__* keys; int /*<<< orphan*/  modifiers; void* input; } ;
struct cmd_results {int dummy; } ;
struct TYPE_13__ {int length; char** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_15__ {TYPE_1__* current_mode; } ;
struct TYPE_14__ {scalar_t__ length; } ;
struct TYPE_12__ {TYPE_2__* mouse_bindings; TYPE_2__* keysym_bindings; TYPE_2__* keycode_bindings; } ;

/* Variables and functions */
 int BINDING_BORDER ; 
 int BINDING_CODE ; 
 int BINDING_CONTENTS ; 
 scalar_t__ BINDING_KEYCODE ; 
 scalar_t__ BINDING_KEYSYM ; 
 int BINDING_LOCKED ; 
 scalar_t__ BINDING_MOUSECODE ; 
 scalar_t__ BINDING_MOUSESYM ; 
 int BINDING_RELEASE ; 
 int BINDING_TITLEBAR ; 
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 int XKB_LAYOUT_INVALID ; 
 struct cmd_results* FUNC0 (struct sway_binding*,TYPE_2__*,char const*,char*,int) ; 
 int /*<<< orphan*/  binding_order ; 
 struct cmd_results* FUNC1 (struct sway_binding*,TYPE_2__*,char const*,char*) ; 
 void* FUNC2 (int,int) ; 
 struct cmd_results* FUNC3 (int,char const*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_9__* config ; 
 TYPE_4__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_binding*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct cmd_results* FUNC9 (char*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (char**,int) ; 
 int /*<<< orphan*/  key_qsort_cmp ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (char*,char*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 void* FUNC17 (char*) ; 
 int FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 
 int FUNC20 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct sway_binding*) ; 

__attribute__((used)) static struct cmd_results *FUNC23(int argc, char **argv,
		bool bindcode, bool unbind) {
	const char *bindtype;
	int minargs = 2;
	if (unbind) {
		bindtype = bindcode ? "unbindcode" : "unbindsym";
		minargs--;
	} else {
		bindtype = bindcode ? "bindcode": "bindsym";
	}

	struct cmd_results *error = NULL;
	if ((error = FUNC3(argc, bindtype, EXPECTED_AT_LEAST, minargs))) {
		return error;
	}

	struct sway_binding *binding = FUNC2(1, sizeof(struct sway_binding));
	if (!binding) {
		return FUNC4(CMD_FAILURE, "Unable to allocate binding");
	}
	binding->input = FUNC17("*");
	binding->keys = FUNC5();
	binding->group = XKB_LAYOUT_INVALID;
	binding->modifiers = 0;
	binding->flags = 0;
	binding->type = bindcode ? BINDING_KEYCODE : BINDING_KEYSYM;

	bool exclude_titlebar = false;
	bool warn = true;

	while (argc > 0) {
		if (FUNC16("--release", argv[0]) == 0) {
			binding->flags |= BINDING_RELEASE;
		} else if (FUNC16("--locked", argv[0]) == 0) {
			binding->flags |= BINDING_LOCKED;
		} else if (FUNC16("--whole-window", argv[0]) == 0) {
			binding->flags |= BINDING_BORDER | BINDING_CONTENTS | BINDING_TITLEBAR;
		} else if (FUNC16("--border", argv[0]) == 0) {
			binding->flags |= BINDING_BORDER;
		} else if (FUNC16("--to-code", argv[0]) == 0) {
			if (!bindcode) {
				binding->flags |= BINDING_CODE;
			}
		} else if (FUNC16("--exclude-titlebar", argv[0]) == 0) {
			exclude_titlebar = true;
		} else if (FUNC19("--input-device=", argv[0],
					FUNC18("--input-device=")) == 0) {
			FUNC6(binding->input);
			binding->input = FUNC17(argv[0] + FUNC18("--input-device="));
		} else if (FUNC16("--no-warn", argv[0]) == 0) {
			warn = false;
		} else {
			break;
		}
		argv++;
		argc--;
	}
	if (binding->flags & (BINDING_BORDER | BINDING_CONTENTS | BINDING_TITLEBAR)
			|| exclude_titlebar) {
		binding->type = binding->type == BINDING_KEYCODE ?
			BINDING_MOUSECODE : BINDING_MOUSESYM;
	}

	if (argc < minargs) {
		FUNC7(binding);
		return FUNC4(CMD_FAILURE,
			"Invalid %s command "
			"(expected at least %d non-option arguments, got %d)",
			bindtype, minargs, argc);
	}

	list_t *split = FUNC15(argv[0], "+");
	for (int i = 0; i < split->length; ++i) {
		// Check for group
		if (FUNC19(split->items[i], "Group", FUNC18("Group")) == 0) {
			if (binding->group != XKB_LAYOUT_INVALID) {
				FUNC7(binding);
				FUNC13(split);
				return FUNC4(CMD_FAILURE,
						"Only one group can be specified");
			}
			char *end;
			int group = FUNC20(split->items[i] + FUNC18("Group"), &end, 10);
			if (group < 1 || group > 4 || end[0] != '\0') {
				FUNC7(binding);
				FUNC13(split);
				return FUNC4(CMD_FAILURE, "Invalid group");
			}
			binding->group = group - 1;
			continue;
		} else if (FUNC16(split->items[i], "Mode_switch") == 0) {
			// For full i3 compatibility, Mode_switch is an alias for Group2
			if (binding->group != XKB_LAYOUT_INVALID) {
				FUNC7(binding);
				FUNC13(split);
				return FUNC4(CMD_FAILURE,
						"Only one group can be specified");
			}
			binding->group = 1;
		}

		// Check for a modifier key
		uint32_t mod;
		if ((mod = FUNC8(split->items[i])) > 0) {
			binding->modifiers |= mod;
			continue;
		}

		// Identify the key and possibly change binding->type
		uint32_t key_val = 0;
		error = FUNC9(split->items[i], binding->keys->length == 0,
				     &key_val, &binding->type);
		if (error) {
			FUNC7(binding);
			FUNC12(split);
			return error;
		}

		uint32_t *key = FUNC2(1, sizeof(uint32_t));
		if (!key) {
			FUNC7(binding);
			FUNC13(split);
			return FUNC4(CMD_FAILURE,
					"Unable to allocate binding key");
		}
		*key = key_val;
		FUNC11(binding->keys, key);
	}
	FUNC13(split);

	// refine region of interest for mouse binding once we are certain
	// that this is one
	if (exclude_titlebar) {
		binding->flags &= ~BINDING_TITLEBAR;
	} else if (binding->type == BINDING_MOUSECODE
			|| binding->type == BINDING_MOUSESYM) {
		binding->flags |= BINDING_TITLEBAR;
	}

	// sort ascending
	FUNC14(binding->keys, key_qsort_cmp);

	// translate keysyms into keycodes
	if (!FUNC22(binding)) {
		FUNC21(SWAY_INFO,
				"Unable to translate bindsym into bindcode: %s", argv[0]);
	}

	list_t *mode_bindings;
	if (binding->type == BINDING_KEYCODE) {
		mode_bindings = config->current_mode->keycode_bindings;
	} else if (binding->type == BINDING_KEYSYM) {
		mode_bindings = config->current_mode->keysym_bindings;
	} else {
		mode_bindings = config->current_mode->mouse_bindings;
	}

	if (unbind) {
		return FUNC1(binding, mode_bindings, bindtype, argv[0]);
	}

	binding->command = FUNC10(argv + 1, argc - 1);
	binding->order = binding_order++;
	return FUNC0(binding, mode_bindings, bindtype, argv[0], warn);
}