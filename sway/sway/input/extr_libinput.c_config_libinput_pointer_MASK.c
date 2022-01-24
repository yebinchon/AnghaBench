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
struct libinput_device {int dummy; } ;
struct input_config {scalar_t__ send_events; scalar_t__ tap; scalar_t__ tap_button_map; scalar_t__ drag; scalar_t__ drag_lock; scalar_t__ pointer_accel; scalar_t__ accel_profile; scalar_t__ natural_scroll; scalar_t__ left_handed; scalar_t__ click_method; scalar_t__ middle_emulation; scalar_t__ scroll_method; scalar_t__ scroll_button; scalar_t__ dwt; int /*<<< orphan*/  identifier; } ;

/* Variables and functions */
 scalar_t__ FLT_MIN ; 
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (struct libinput_device*,scalar_t__) ; 
 int FUNC1 (struct libinput_device*,scalar_t__) ; 
 int FUNC2 (struct libinput_device*,scalar_t__) ; 
 int FUNC3 (struct libinput_device*,scalar_t__) ; 
 int FUNC4 (struct libinput_device*,scalar_t__) ; 
 int FUNC5 (struct libinput_device*,scalar_t__) ; 
 int FUNC6 (struct libinput_device*,scalar_t__) ; 
 int FUNC7 (struct libinput_device*,scalar_t__) ; 
 int FUNC8 (struct libinput_device*,scalar_t__) ; 
 int FUNC9 (struct libinput_device*,scalar_t__) ; 
 int FUNC10 (struct libinput_device*,scalar_t__) ; 
 int FUNC11 (struct libinput_device*,scalar_t__) ; 
 int FUNC12 (struct libinput_device*,scalar_t__) ; 
 int FUNC13 (struct libinput_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC15(struct libinput_device *device,
		struct input_config *ic, const char *device_id) {
	FUNC14(SWAY_DEBUG, "config_libinput_pointer('%s' on  '%s')",
			ic->identifier, device_id);
	bool changed = false;
	if (ic->send_events != INT_MIN) {
		changed |= FUNC9(device, ic->send_events);
	}
	if (ic->tap != INT_MIN) {
		changed |= FUNC10(device, ic->tap);
	}
	if (ic->tap_button_map != INT_MIN) {
		changed |= FUNC11(device, ic->tap_button_map);
	}
	if (ic->drag != INT_MIN) {
		changed |= FUNC12(device, ic->drag);
	}
	if (ic->drag_lock != INT_MIN) {
		changed |= FUNC13(device, ic->drag_lock);
	}

	if (ic->pointer_accel != FLT_MIN) {
		changed |= FUNC1(device, ic->pointer_accel);
	}
	if (ic->accel_profile != INT_MIN) {
		changed |= FUNC0(device, ic->accel_profile);
	}
	if (ic->natural_scroll != INT_MIN) {
		changed |= FUNC6(device, ic->natural_scroll);
	}
	if (ic->left_handed != INT_MIN) {
		changed |= FUNC4(device, ic->left_handed);
	}
	if (ic->click_method != INT_MIN) {
		changed |= FUNC2(device, ic->click_method);
	}
	if (ic->middle_emulation != INT_MIN) {
		changed |= FUNC5(device, ic->middle_emulation);
	}
	if (ic->scroll_method != INT_MIN) {
		changed |= FUNC8(device, ic->scroll_method);
	}
	if (ic->scroll_button != INT_MIN) {
		changed |= FUNC7(device, ic->scroll_button);
	}
	if (ic->dwt != INT_MIN) {
		changed |= FUNC3(device, ic->dwt);
	}
	return changed;
}