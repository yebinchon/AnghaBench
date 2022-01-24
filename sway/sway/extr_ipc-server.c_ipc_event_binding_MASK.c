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
typedef  int uint32_t ;
struct sway_binding {char* command; scalar_t__ type; TYPE_1__* keys; int /*<<< orphan*/  modifiers; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_2__ {int length; scalar_t__* items; } ;

/* Variables and functions */
 scalar_t__ BINDING_KEYCODE ; 
 scalar_t__ BINDING_MOUSECODE ; 
 scalar_t__ BINDING_MOUSESYM ; 
 int BTN_LEFT ; 
 int /*<<< orphan*/  IPC_EVENT_BINDING ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC14 (int,char*,int) ; 

void FUNC15(struct sway_binding *binding) {
	if (!FUNC1(IPC_EVENT_BINDING)) {
		return;
	}
	FUNC13(SWAY_DEBUG, "Sending binding event");

	json_object *json_binding = FUNC7();
	FUNC9(json_binding, "command", FUNC8(binding->command));

	const char *names[10];
	int len = FUNC0(names, binding->modifiers);
	json_object *modifiers = FUNC5();
	for (int i = 0; i < len; ++i) {
		FUNC3(modifiers, FUNC8(names[i]));
	}
	FUNC9(json_binding, "event_state_mask", modifiers);

	json_object *input_codes = FUNC5();
	int input_code = 0;
	json_object *symbols = FUNC5();
	json_object *symbol = NULL;

	if (binding->type == BINDING_KEYCODE) { // bindcode: populate input_codes
		uint32_t keycode;
		for (int i = 0; i < binding->keys->length; ++i) {
			keycode = *(uint32_t *)binding->keys->items[i];
			FUNC3(input_codes, FUNC6(keycode));
			if (i == 0) {
				input_code = keycode;
			}
		}
	} else { // bindsym/mouse: populate symbols
		uint32_t keysym;
		char buffer[64];
		for (int i = 0; i < binding->keys->length; ++i) {
			keysym = *(uint32_t *)binding->keys->items[i];
			if (keysym >= BTN_LEFT && keysym <= BTN_LEFT + 8) {
				FUNC12(buffer, 64, "button%u", keysym - BTN_LEFT + 1);
			} else if (FUNC14(keysym, buffer, 64) < 0) {
				continue;
			}

			json_object *str = FUNC8(buffer);
			if (i == 0) {
				// str is owned by both symbol and symbols. Make sure
				// to bump the ref count.
				FUNC3(symbols, FUNC4(str));
				symbol = str;
			} else {
				FUNC3(symbols, str);
			}
		}
	}

	FUNC9(json_binding, "input_codes", input_codes);
	FUNC9(json_binding, "input_code", FUNC6(input_code));
	FUNC9(json_binding, "symbols", symbols);
	FUNC9(json_binding, "symbol", symbol);

	bool mouse = binding->type == BINDING_MOUSECODE ||
		binding->type == BINDING_MOUSESYM;
	FUNC9(json_binding, "input_type", mouse
			? FUNC8("mouse")
			: FUNC8("keyboard"));

	json_object *json = FUNC7();
	FUNC9(json, "change", FUNC8("run"));
	FUNC9(json, "binding", json_binding);
	const char *json_string = FUNC11(json);
	FUNC2(json_string, IPC_EVENT_BINDING);
	FUNC10(json);
}