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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ embedded_loc_filename ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  htab_loc ; 
 scalar_t__ loc_filename ; 
 int /*<<< orphan*/  localization_initialized ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(BOOL reinit) {
	if (!localization_initialized)
		return;
	if (!reinit) {
		FUNC1();
		if (loc_filename != embedded_loc_filename)
			FUNC4(loc_filename);
	}
	FUNC0();
	FUNC3(reinit);
	FUNC2(&htab_loc);
}