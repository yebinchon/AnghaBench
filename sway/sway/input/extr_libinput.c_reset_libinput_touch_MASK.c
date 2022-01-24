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
 int /*<<< orphan*/  FUNC0 (struct libinput_device*,float*) ; 
 int /*<<< orphan*/  FUNC1 (struct libinput_device*) ; 
 int FUNC2 (struct libinput_device*,float*) ; 
 int FUNC3 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static bool FUNC5(struct libinput_device *device,
		const char *device_id) {
	FUNC4(SWAY_DEBUG, "reset_libinput_touch(%s)", device_id);
	bool changed = false;

	changed |= FUNC3(device,
		FUNC1(device));

	float matrix[6];
	FUNC0(device, matrix);
	changed |= FUNC2(device, matrix);

	return changed;
}