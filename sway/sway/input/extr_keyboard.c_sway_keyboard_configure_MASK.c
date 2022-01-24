#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int xkb_mod_mask_t ;
typedef  int xkb_mod_index_t ;
typedef  int uint32_t ;
struct xkb_keymap {int dummy; } ;
struct wlr_seat {int dummy; } ;
struct wlr_input_device {TYPE_4__* keyboard; } ;
struct TYPE_17__ {int /*<<< orphan*/  notify; int /*<<< orphan*/  link; } ;
struct sway_keyboard {scalar_t__ effective_layout; TYPE_3__* seat_device; TYPE_8__ keyboard_modifiers; TYPE_8__ keyboard_key; struct xkb_keymap* keymap; } ;
struct input_config {scalar_t__ xkb_numlock; scalar_t__ xkb_capslock; int repeat_rate; int repeat_delay; } ;
struct TYPE_18__ {struct wlr_input_device* wlr_device; } ;
struct TYPE_14__ {int /*<<< orphan*/  modifiers; int /*<<< orphan*/  key; } ;
struct TYPE_16__ {TYPE_2__ events; int /*<<< orphan*/ * led_indexes; int /*<<< orphan*/  xkb_state; } ;
struct TYPE_15__ {TYPE_9__* input_device; TYPE_1__* sway_seat; } ;
struct TYPE_13__ {struct wlr_seat* wlr_seat; } ;
struct TYPE_12__ {scalar_t__ reloading; } ;

/* Variables and functions */
 int INT_MIN ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int WLR_LED_COUNT ; 
 int /*<<< orphan*/  XKB_KEYMAP_FORMAT_TEXT_V1 ; 
 int XKB_MOD_INVALID ; 
 int /*<<< orphan*/  XKB_MOD_NAME_CAPS ; 
 int /*<<< orphan*/  XKB_MOD_NAME_NUM ; 
 TYPE_11__* config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  handle_keyboard_key ; 
 int /*<<< orphan*/  handle_keyboard_modifiers ; 
 struct input_config* FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_9__*) ; 
 int FUNC3 (char*,char*) ; 
 struct xkb_keymap* FUNC4 (struct input_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,struct xkb_keymap*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wlr_seat*,struct wlr_input_device*) ; 
 char* FUNC13 (struct xkb_keymap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xkb_keymap*) ; 
 int FUNC15 (struct xkb_keymap*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC17(struct sway_keyboard *keyboard) {
	struct input_config *input_config =
		FUNC1(keyboard->seat_device->input_device);
	struct wlr_input_device *wlr_device =
		keyboard->seat_device->input_device->wlr_device;

	struct xkb_keymap *keymap = FUNC4(input_config, NULL);
	if (!keymap) {
		FUNC5(SWAY_ERROR, "Failed to compile keymap. Attempting defaults");
		keymap = FUNC4(NULL, NULL);
		if (!keymap) {
			FUNC5(SWAY_ERROR,
					"Failed to compile default keymap. Aborting configure");
			return;
		}
	}

	bool keymap_changed = false;
	bool effective_layout_changed = keyboard->effective_layout != 0;
	if (keyboard->keymap) {
		char *old_keymap_string = FUNC13(keyboard->keymap,
			XKB_KEYMAP_FORMAT_TEXT_V1);
		char *new_keymap_string = FUNC13(keymap,
			XKB_KEYMAP_FORMAT_TEXT_V1);
		keymap_changed = FUNC3(old_keymap_string, new_keymap_string);
		FUNC0(old_keymap_string);
		FUNC0(new_keymap_string);
	} else {
		keymap_changed = true;
	}

	if (keymap_changed || config->reloading) {
		FUNC14(keyboard->keymap);
		keyboard->keymap = keymap;
		keyboard->effective_layout = 0;
		FUNC10(wlr_device->keyboard, keyboard->keymap);

		xkb_mod_mask_t locked_mods = 0;
		if (input_config && input_config->xkb_numlock > 0) {
			xkb_mod_index_t mod_index = FUNC15(keymap,
					XKB_MOD_NAME_NUM);
			if (mod_index != XKB_MOD_INVALID) {
			       locked_mods |= (uint32_t)1 << mod_index;
			}
		}
		if (input_config && input_config->xkb_capslock > 0) {
			xkb_mod_index_t mod_index = FUNC15(keymap,
					XKB_MOD_NAME_CAPS);
			if (mod_index != XKB_MOD_INVALID) {
			       locked_mods |= (uint32_t)1 << mod_index;
			}
		}
		if (locked_mods) {
			FUNC9(wlr_device->keyboard, 0, 0,
					locked_mods, 0);
			uint32_t leds = 0;
			for (uint32_t i = 0; i < WLR_LED_COUNT; ++i) {
				if (FUNC16(
						wlr_device->keyboard->xkb_state,
						wlr_device->keyboard->led_indexes[i])) {
					leds |= (1 << i);
				}
			}
			FUNC8(wlr_device->keyboard, leds);
		}
	} else {
		FUNC14(keymap);
	}

	int repeat_rate = 25;
	if (input_config && input_config->repeat_rate != INT_MIN) {
		repeat_rate = input_config->repeat_rate;
	}
	int repeat_delay = 600;
	if (input_config && input_config->repeat_delay != INT_MIN) {
		repeat_delay = input_config->repeat_delay;
	}
	FUNC11(wlr_device->keyboard, repeat_rate,
			repeat_delay);

	struct wlr_seat *seat = keyboard->seat_device->sway_seat->wlr_seat;
	FUNC12(seat, wlr_device);

	FUNC6(&keyboard->keyboard_key.link);
	FUNC7(&wlr_device->keyboard->events.key, &keyboard->keyboard_key);
	keyboard->keyboard_key.notify = handle_keyboard_key;

	FUNC6(&keyboard->keyboard_modifiers.link);
	FUNC7(&wlr_device->keyboard->events.modifiers,
		&keyboard->keyboard_modifiers);
	keyboard->keyboard_modifiers.notify = handle_keyboard_modifiers;

	if (keymap_changed) {
		FUNC2("xkb_keymap",
			keyboard->seat_device->input_device);
	} else if (effective_layout_changed) {
		FUNC2("xkb_layout",
			keyboard->seat_device->input_device);
	}
}