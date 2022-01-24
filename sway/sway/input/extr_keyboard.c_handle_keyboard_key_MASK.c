#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xkb_keysym_t ;
typedef  scalar_t__ xkb_keycode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct wlr_seat {int dummy; } ;
struct wlr_input_device {TYPE_5__* keyboard; } ;
struct wlr_event_keyboard_key {scalar_t__ state; scalar_t__ keycode; int /*<<< orphan*/  time_msec; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {int /*<<< orphan*/ * exclusive_client; struct wlr_seat* wlr_seat; } ;
struct sway_keyboard {int /*<<< orphan*/  state_pressed_sent; struct sway_binding* repeat_binding; int /*<<< orphan*/  key_repeat_source; int /*<<< orphan*/  effective_layout; int /*<<< orphan*/  state_keysyms_translated; int /*<<< orphan*/  state_keysyms_raw; int /*<<< orphan*/  state_keycodes; struct sway_binding* held_binding; TYPE_2__* seat_device; } ;
struct sway_binding {int dummy; } ;
struct TYPE_14__ {TYPE_3__* current_mode; } ;
struct TYPE_13__ {int /*<<< orphan*/  idle; } ;
struct TYPE_11__ {scalar_t__ delay; } ;
struct TYPE_12__ {TYPE_4__ repeat_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  keysym_bindings; int /*<<< orphan*/  keycode_bindings; } ;
struct TYPE_9__ {TYPE_1__* input_device; struct sway_seat* sway_seat; } ;
struct TYPE_8__ {struct wlr_input_device* wlr_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ WLR_KEY_PRESSED ; 
 scalar_t__ WLR_KEY_RELEASED ; 
 TYPE_7__* config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sway_binding**,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct wlr_input_device*) ; 
 struct sway_keyboard* keyboard ; 
 int FUNC3 (struct sway_keyboard*,scalar_t__ const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  keyboard_key ; 
 size_t FUNC4 (struct sway_keyboard*,scalar_t__,scalar_t__ const**,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct sway_keyboard*,scalar_t__,scalar_t__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_seat*,struct sway_binding*) ; 
 TYPE_6__ server ; 
 int /*<<< orphan*/  FUNC7 (struct sway_keyboard*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,struct wlr_event_keyboard_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sway_keyboard* FUNC11 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct wlr_seat*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (struct wlr_seat*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct wlr_seat*,struct wlr_input_device*) ; 

__attribute__((used)) static void FUNC17(struct wl_listener *listener, void *data) {
	struct sway_keyboard *keyboard =
		FUNC11(listener, keyboard, keyboard_key);
	struct sway_seat* seat = keyboard->seat_device->sway_seat;
	struct wlr_seat *wlr_seat = seat->wlr_seat;
	struct wlr_input_device *wlr_device =
		keyboard->seat_device->input_device->wlr_device;
	char *device_identifier = FUNC2(wlr_device);
	FUNC13(server.idle, wlr_seat);
	struct wlr_event_keyboard_key *event = data;
	bool input_inhibited = seat->exclusive_client != NULL;

	// Identify new keycode, raw keysym(s), and translated keysym(s)
	xkb_keycode_t keycode = event->keycode + 8;

	const xkb_keysym_t *raw_keysyms;
	uint32_t raw_modifiers;
	size_t raw_keysyms_len =
		FUNC4(keyboard, keycode, &raw_keysyms, &raw_modifiers);

	const xkb_keysym_t *translated_keysyms;
	uint32_t translated_modifiers;
	size_t translated_keysyms_len =
		FUNC5(keyboard, keycode, &translated_keysyms,
			&translated_modifiers);

	uint32_t code_modifiers = FUNC14(wlr_device->keyboard);

	// Update shortcut model state
	FUNC10(&keyboard->state_keycodes, event,
			(uint32_t)keycode, code_modifiers);
	for (size_t i = 0; i < raw_keysyms_len; ++i) {
		FUNC10(&keyboard->state_keysyms_raw,
				event, (uint32_t)raw_keysyms[i],
				code_modifiers);
	}
	for (size_t i = 0; i < translated_keysyms_len; ++i) {
		FUNC10(&keyboard->state_keysyms_translated,
				event, (uint32_t)translated_keysyms[i],
				code_modifiers);
	}

	bool handled = false;

	// Identify active release binding
	struct sway_binding *binding_released = NULL;
	FUNC1(&keyboard->state_keycodes,
			config->current_mode->keycode_bindings, &binding_released,
			code_modifiers, true, input_inhibited, device_identifier,
			keyboard->effective_layout);
	FUNC1(&keyboard->state_keysyms_raw,
			config->current_mode->keysym_bindings, &binding_released,
			raw_modifiers, true, input_inhibited, device_identifier,
			keyboard->effective_layout);
	FUNC1(&keyboard->state_keysyms_translated,
			config->current_mode->keysym_bindings, &binding_released,
			translated_modifiers, true, input_inhibited, device_identifier,
			keyboard->effective_layout);

	// Execute stored release binding once no longer active
	if (keyboard->held_binding && binding_released != keyboard->held_binding &&
			event->state == WLR_KEY_RELEASED) {
		FUNC6(seat, keyboard->held_binding);
		handled = true;
	}
	if (binding_released != keyboard->held_binding) {
		keyboard->held_binding = NULL;
	}
	if (binding_released && event->state == WLR_KEY_PRESSED) {
		keyboard->held_binding = binding_released;
	}

	// Identify and execute active pressed binding
	struct sway_binding *binding = NULL;
	if (event->state == WLR_KEY_PRESSED) {
		FUNC1(&keyboard->state_keycodes,
				config->current_mode->keycode_bindings, &binding,
				code_modifiers, false, input_inhibited, device_identifier,
				keyboard->effective_layout);
		FUNC1(&keyboard->state_keysyms_raw,
				config->current_mode->keysym_bindings, &binding,
				raw_modifiers, false, input_inhibited, device_identifier,
				keyboard->effective_layout);
		FUNC1(&keyboard->state_keysyms_translated,
				config->current_mode->keysym_bindings, &binding,
				translated_modifiers, false, input_inhibited,
				device_identifier, keyboard->effective_layout);
	}

	// Set up (or clear) keyboard repeat for a pressed binding. Since the
	// binding may remove the keyboard, the timer needs to be updated first
	if (binding && wlr_device->keyboard->repeat_info.delay > 0) {
		keyboard->repeat_binding = binding;
		if (FUNC12(keyboard->key_repeat_source,
				wlr_device->keyboard->repeat_info.delay) < 0) {
			FUNC8(SWAY_DEBUG, "failed to set key repeat timer");
		}
	} else if (keyboard->repeat_binding) {
		FUNC7(keyboard);
	}

	if (binding) {
		FUNC6(seat, binding);
		handled = true;
	}

	// Compositor bindings
	if (!handled && event->state == WLR_KEY_PRESSED) {
		handled = FUNC3(
				keyboard, translated_keysyms, translated_modifiers,
				translated_keysyms_len);
	}
	if (!handled && event->state == WLR_KEY_PRESSED) {
		handled = FUNC3(
				keyboard, raw_keysyms, raw_modifiers,
				raw_keysyms_len);
	}

	if (!handled || event->state == WLR_KEY_RELEASED) {
		bool pressed_sent = FUNC10(
				&keyboard->state_pressed_sent, event, (uint32_t)keycode, 0);
		if (pressed_sent || event->state == WLR_KEY_PRESSED) {
			FUNC16(wlr_seat, wlr_device);
			FUNC15(wlr_seat, event->time_msec,
					event->keycode, event->state);
		}
	}

	FUNC9();

	FUNC0(device_identifier);
}