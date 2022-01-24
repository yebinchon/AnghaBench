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
typedef  int uint32_t ;
struct libinput_device {int dummy; } ;
struct json_object {int dummy; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
#define  LIBINPUT_CONFIG_ACCEL_PROFILE_ADAPTIVE 152 
#define  LIBINPUT_CONFIG_ACCEL_PROFILE_FLAT 151 
#define  LIBINPUT_CONFIG_ACCEL_PROFILE_NONE 150 
#define  LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS 149 
#define  LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER 148 
#define  LIBINPUT_CONFIG_CLICK_METHOD_NONE 147 
#define  LIBINPUT_CONFIG_DRAG_DISABLED 146 
#define  LIBINPUT_CONFIG_DRAG_ENABLED 145 
#define  LIBINPUT_CONFIG_DRAG_LOCK_DISABLED 144 
#define  LIBINPUT_CONFIG_DRAG_LOCK_ENABLED 143 
#define  LIBINPUT_CONFIG_DWT_DISABLED 142 
#define  LIBINPUT_CONFIG_DWT_ENABLED 141 
#define  LIBINPUT_CONFIG_MIDDLE_EMULATION_DISABLED 140 
#define  LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED 139 
#define  LIBINPUT_CONFIG_SCROLL_2FG 138 
#define  LIBINPUT_CONFIG_SCROLL_EDGE 137 
#define  LIBINPUT_CONFIG_SCROLL_NO_SCROLL 136 
#define  LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN 135 
#define  LIBINPUT_CONFIG_SEND_EVENTS_DISABLED 134 
#define  LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE 133 
#define  LIBINPUT_CONFIG_SEND_EVENTS_ENABLED 132 
#define  LIBINPUT_CONFIG_TAP_DISABLED 131 
#define  LIBINPUT_CONFIG_TAP_ENABLED 130 
#define  LIBINPUT_CONFIG_TAP_MAP_LMR 129 
#define  LIBINPUT_CONFIG_TAP_MAP_LRM 128 
 int /*<<< orphan*/  FUNC0 (struct json_object*,struct json_object*) ; 
 struct json_object* FUNC1 () ; 
 struct json_object* FUNC2 (float) ; 
 struct json_object* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 struct json_object* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,struct json_object*) ; 
 int FUNC7 (struct libinput_device*) ; 
 double FUNC8 (struct libinput_device*) ; 
 scalar_t__ FUNC9 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct libinput_device*,float*) ; 
 scalar_t__ FUNC11 (struct libinput_device*) ; 
 int FUNC12 (struct libinput_device*) ; 
 int FUNC13 (struct libinput_device*) ; 
 int FUNC14 (struct libinput_device*) ; 
 scalar_t__ FUNC15 (struct libinput_device*) ; 
 scalar_t__ FUNC16 (struct libinput_device*) ; 
 scalar_t__ FUNC17 (struct libinput_device*) ; 
 int FUNC18 (struct libinput_device*) ; 
 scalar_t__ FUNC19 (struct libinput_device*) ; 
 int FUNC20 (struct libinput_device*) ; 
 int FUNC21 (struct libinput_device*) ; 
 int FUNC22 (struct libinput_device*) ; 
 scalar_t__ FUNC23 (struct libinput_device*) ; 
 scalar_t__ FUNC24 (struct libinput_device*) ; 
 int FUNC25 (struct libinput_device*) ; 
 int FUNC26 (struct libinput_device*) ; 
 int FUNC27 (struct libinput_device*) ; 
 int FUNC28 (struct libinput_device*) ; 
 int FUNC29 (struct libinput_device*) ; 
 scalar_t__ FUNC30 (struct libinput_device*) ; 

__attribute__((used)) static json_object *FUNC31(struct libinput_device *device) {
	json_object *object = FUNC4();

	const char *events = "unknown";
	switch (FUNC25(device)) {
	case LIBINPUT_CONFIG_SEND_EVENTS_ENABLED:
		events = "enabled";
		break;
	case LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE:
		events = "disabled_on_external_mouse";
		break;
	case LIBINPUT_CONFIG_SEND_EVENTS_DISABLED:
		events = "disabled";
		break;
	}
	FUNC6(object, "send_events",
			FUNC5(events));

	if (FUNC30(device) > 0) {
		const char *tap = "unknown";
		switch (FUNC29(device)) {
		case LIBINPUT_CONFIG_TAP_ENABLED:
			tap = "enabled";
			break;
		case LIBINPUT_CONFIG_TAP_DISABLED:
			tap = "disabled";
			break;
		}
		FUNC6(object, "tap", FUNC5(tap));

		const char *button_map = "unknown";
		switch (FUNC26(device)) {
		case LIBINPUT_CONFIG_TAP_MAP_LRM:
			button_map = "lrm";
			break;
		case LIBINPUT_CONFIG_TAP_MAP_LMR:
			button_map = "lmr";
			break;
		}
		FUNC6(object, "tap_button_map",
				FUNC5(button_map));

		const char* drag = "unknown";
		switch (FUNC27(device)) {
		case LIBINPUT_CONFIG_DRAG_ENABLED:
			drag = "enabled";
			break;
		case LIBINPUT_CONFIG_DRAG_DISABLED:
			drag = "disabled";
			break;
		}
		FUNC6(object, "tap_drag",
				FUNC5(drag));

		const char *drag_lock = "unknown";
		switch (FUNC28(device)) {
		case LIBINPUT_CONFIG_DRAG_LOCK_ENABLED:
			drag_lock = "enabled";
			break;
		case LIBINPUT_CONFIG_DRAG_LOCK_DISABLED:
			drag_lock = "disabled";
			break;
		}
		FUNC6(object, "tap_drag_lock",
				FUNC5(drag_lock));
	}

	if (FUNC9(device)) {
		double accel = FUNC8(device);
		FUNC6(object, "accel_speed",
				FUNC2(accel));

		const char *accel_profile = "unknown";
		switch (FUNC7(device)) {
		case LIBINPUT_CONFIG_ACCEL_PROFILE_NONE:
			accel_profile = "none";
			break;
		case LIBINPUT_CONFIG_ACCEL_PROFILE_FLAT:
			accel_profile = "flat";
			break;
		case LIBINPUT_CONFIG_ACCEL_PROFILE_ADAPTIVE:
			accel_profile = "adaptive";
			break;
		}
		FUNC6(object, "accel_profile",
				FUNC5(accel_profile));
	}

	if (FUNC24(device)) {
		const char *natural_scroll = "disabled";
		if (FUNC23(device)) {
			natural_scroll = "enabled";
		}
		FUNC6(object, "natural_scroll",
				FUNC5(natural_scroll));
	}

	if (FUNC17(device)) {
		const char *left_handed = "disabled";
		if (FUNC16(device) != 0) {
			left_handed = "enabled";
		}
		FUNC6(object, "left_handed",
				FUNC5(left_handed));
	}

	uint32_t click_methods = FUNC13(device);
	if ((click_methods & ~LIBINPUT_CONFIG_CLICK_METHOD_NONE) != 0) {
		const char *click_method = "unknown";
		switch (FUNC12(device)) {
		case LIBINPUT_CONFIG_CLICK_METHOD_NONE:
			click_method = "none";
			break;
		case LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS:
			click_method = "button_areas";
			break;
		case LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER:
			click_method = "clickfinger";
			break;
		}
		FUNC6(object, "click_method",
				FUNC5(click_method));
	}

	if (FUNC19(device)) {
		const char *middle_emulation = "unknown";
		switch (FUNC18(device)) {
		case LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED:
			middle_emulation = "enabled";
			break;
		case LIBINPUT_CONFIG_MIDDLE_EMULATION_DISABLED:
			middle_emulation = "disabled";
			break;
		}
		FUNC6(object, "middle_emulation",
				FUNC5(middle_emulation));
	}

	uint32_t scroll_methods = FUNC22(device);
	if ((scroll_methods & ~LIBINPUT_CONFIG_SCROLL_NO_SCROLL) != 0) {
		const char *scroll_method = "unknown";
		switch (FUNC21(device)) {
		case LIBINPUT_CONFIG_SCROLL_NO_SCROLL:
			scroll_method = "none";
			break;
		case LIBINPUT_CONFIG_SCROLL_2FG:
			scroll_method = "two_finger";
			break;
		case LIBINPUT_CONFIG_SCROLL_EDGE:
			scroll_method = "edge";
			break;
		case LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN:
			scroll_method = "on_button_down";
			break;
		}
		FUNC6(object, "scroll_method",
				FUNC5(scroll_method));

		if ((scroll_methods & LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN) != 0) {
			uint32_t button = FUNC20(device);
			FUNC6(object, "scroll_button",
					FUNC3(button));
		}
	}

	if (FUNC15(device)) {
		const char *dwt = "unknown";
		switch (FUNC14(device)) {
		case LIBINPUT_CONFIG_DWT_ENABLED:
			dwt = "enabled";
			break;
		case LIBINPUT_CONFIG_DWT_DISABLED:
			dwt = "disabled";
			break;
		}
		FUNC6(object, "dwt", FUNC5(dwt));
	}

	if (FUNC11(device)) {
		float matrix[6];
		FUNC10(device, matrix);
		struct json_object* array = FUNC1();
		struct json_object* x;
		for (int i = 0; i < 6; i++) {
			x = FUNC2(matrix[i]);
			FUNC0(array, x);
		}
		FUNC6(object, "calibration_matrix", array);
	}

	return object;
}