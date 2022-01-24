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

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC7(void) {
	if (FUNC3() != FUNC1() || FUNC2() != FUNC0()) {
		if (FUNC5(FUNC3()) != 0 || FUNC4(FUNC2()) != 0) {
			FUNC6(SWAY_ERROR, "Unable to drop root, refusing to start");
			return false;
		}
	}
	if (FUNC5(0) != -1) {
		FUNC6(SWAY_ERROR, "Unable to drop root (we shouldn't be able to "
			"restore it after setuid), refusing to start");
		return false;
	}
	return true;
}