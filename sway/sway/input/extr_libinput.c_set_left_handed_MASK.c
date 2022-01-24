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
 int FUNC0 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct libinput_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC5(struct libinput_device *device, bool left) {
	if (!FUNC1(device) ||
			FUNC0(device) == left) {
		return false;
	}
	FUNC4(SWAY_DEBUG, "left_handed_set(%d)", left);
	FUNC3(FUNC2(device, left));
	return true;
}