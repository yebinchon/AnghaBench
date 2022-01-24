#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_2__ {char* current_config_path; } ;

/* Variables and functions */
 char* SWAY_VERSION ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int*,int*,int*) ; 

json_object *FUNC5(void) {
	int major = 0, minor = 0, patch = 0;
	json_object *version = FUNC1();

	FUNC4(SWAY_VERSION, "%u.%u.%u", &major, &minor, &patch);

	FUNC3(version, "human_readable", FUNC2(SWAY_VERSION));
	FUNC3(version, "variant", FUNC2("sway"));
	FUNC3(version, "major", FUNC0(major));
	FUNC3(version, "minor", FUNC0(minor));
	FUNC3(version, "patch", FUNC0(patch));
	FUNC3(version, "loaded_config_file_name", FUNC2(config->current_config_path));

	return version;
}