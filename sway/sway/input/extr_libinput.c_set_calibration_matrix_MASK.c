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
 int /*<<< orphan*/  FUNC2 (struct libinput_device*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,float,float,float,float,float,float) ; 

__attribute__((used)) static bool FUNC5(struct libinput_device *dev, float mat[6]) {
	if (!FUNC1(dev)) {
		return false;
	}
	bool changed = false;
	float current[6];
	FUNC0(dev, current);
	for (int i = 0; i < 6; i++) {
		if (current[i] != mat[i]) {
			changed = true;
			break;
		}
	}
	if (changed) {
		FUNC4(SWAY_DEBUG, "calibration_set_matrix(%f, %f, %f, %f, %f, %f)",
				mat[0], mat[1], mat[2], mat[3], mat[4], mat[5]);
		FUNC3(FUNC2(dev, mat));
	}
	return changed;
}