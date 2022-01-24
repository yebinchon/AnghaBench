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
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char const*,...) ; 

__attribute__((used)) static void FUNC6(json_object *i) {
	json_object *name, *capabilities, *devices;
	FUNC4(i, "name", &name);
	FUNC4(i, "capabilities", &capabilities);
	FUNC4(i, "devices", &devices);

	const char *fmt =
		"Seat: %s\n"
		"  Capabilities: %d\n";

	FUNC5(fmt, FUNC3(name),
		FUNC2(capabilities));

	size_t devices_len = FUNC1(devices);
	if (devices_len > 0) {
		FUNC5("  Devices:\n");
		for (size_t i = 0; i < devices_len; ++i) {
			json_object *device = FUNC0(devices, i);

			json_object *device_name;
			FUNC4(device, "name", &device_name);

			FUNC5("    %s\n", FUNC3(device_name));
		}
	}

	FUNC5("\n");
}