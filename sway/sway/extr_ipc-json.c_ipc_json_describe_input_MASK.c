#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xkb_layout_index_t ;
struct xkb_state {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct wlr_keyboard {struct xkb_state* xkb_state; struct xkb_keymap* keymap; } ;
struct sway_input_device {char const* identifier; TYPE_1__* wlr_device; } ;
struct libinput_device {int dummy; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_3__ {char const* name; scalar_t__ vendor; scalar_t__ product; scalar_t__ type; struct wlr_keyboard* keyboard; } ;

/* Variables and functions */
 scalar_t__ WLR_INPUT_DEVICE_KEYBOARD ; 
 int /*<<< orphan*/  XKB_STATE_LAYOUT_EFFECTIVE ; 
 int /*<<< orphan*/ * FUNC0 (struct libinput_device*) ; 
 char const* FUNC1 (struct sway_input_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_input_device*,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 struct libinput_device* FUNC10 (TYPE_1__*) ; 
 char* FUNC11 (struct xkb_keymap*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct xkb_keymap*) ; 
 int FUNC13 (struct xkb_state*,scalar_t__,int /*<<< orphan*/ ) ; 

json_object *FUNC14(struct sway_input_device *device) {
	if (!(FUNC8(device, "Device must not be null"))) {
		return NULL;
	}

	json_object *object = FUNC5();

	FUNC7(object, "identifier",
		FUNC6(device->identifier));
	FUNC7(object, "name",
		FUNC6(device->wlr_device->name));
	FUNC7(object, "vendor",
		FUNC4(device->wlr_device->vendor));
	FUNC7(object, "product",
		FUNC4(device->wlr_device->product));
	FUNC7(object, "type",
		FUNC6(
			FUNC1(device)));

	if (device->wlr_device->type == WLR_INPUT_DEVICE_KEYBOARD) {
		struct wlr_keyboard *keyboard = device->wlr_device->keyboard;
		struct xkb_keymap *keymap = keyboard->keymap;
		struct xkb_state *state = keyboard->xkb_state;

		json_object *layouts_arr = FUNC3();
		FUNC7(object, "xkb_layout_names", layouts_arr);

		xkb_layout_index_t num_layouts = FUNC12(keymap);
		xkb_layout_index_t layout_idx;
		for (layout_idx = 0; layout_idx < num_layouts; layout_idx++) {
			const char *layout = FUNC11(keymap, layout_idx);
			FUNC2(layouts_arr,
				layout ? FUNC6(layout) : NULL);

			bool is_active = FUNC13(state,
				layout_idx, XKB_STATE_LAYOUT_EFFECTIVE);
			if (is_active) {
				FUNC7(object, "xkb_active_layout_index",
					FUNC4(layout_idx));
				FUNC7(object, "xkb_active_layout_name",
					layout ? FUNC6(layout) : NULL);
			}
		}
	}

	if (FUNC9(device->wlr_device)) {
		struct libinput_device *libinput_dev;
		libinput_dev = FUNC10(device->wlr_device);
		FUNC7(object, "libinput",
				FUNC0(libinput_dev));
	}

	return object;
}