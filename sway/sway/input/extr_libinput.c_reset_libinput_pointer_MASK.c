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

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct libinput_device*) ; 
 int FUNC14 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static bool FUNC29(struct libinput_device *device,
		const char *device_id) {
	FUNC28(SWAY_DEBUG, "reset_libinput_pointer(%s)", device_id);
	bool changed = false;
	changed |= FUNC23(device,
		FUNC9(device));
	changed |= FUNC24(device,
		FUNC13(device));
	changed |= FUNC25(device,
		FUNC10(device));
	changed |= FUNC26(device,
		FUNC11(device));
	changed |= FUNC27(device,
		FUNC12(device));
	changed |= FUNC15(device,
		FUNC1(device));
	changed |= FUNC14(device,
		FUNC0(device));
	changed |= FUNC20(device,
		FUNC8(
		device));
	changed |= FUNC18(device,
		FUNC4(device));
	changed |= FUNC16(device,
		FUNC2(device));
	changed |= FUNC19(device,
		FUNC5(device));
	changed |= FUNC22(device,
		FUNC7(device));
	changed |= FUNC21(device,
		FUNC6(device));
	changed |= FUNC17(device,
		FUNC3(device));
	return changed;
}