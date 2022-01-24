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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,...) ; 

__attribute__((used)) static void FUNC5(json_object *i) {
	json_object *id, *name, *type, *product, *vendor, *kbdlayout, *libinput;
	FUNC2(i, "identifier", &id);
	FUNC2(i, "name", &name);
	FUNC2(i, "type", &type);
	FUNC2(i, "product", &product);
	FUNC2(i, "vendor", &vendor);

	const char *fmt =
		"Input device: %s\n"
		"  Type: %s\n"
		"  Identifier: %s\n"
		"  Product ID: %d\n"
		"  Vendor ID: %d\n";


	FUNC4(fmt, FUNC1(name),
		FUNC3(FUNC1(type)),
		FUNC1(id),
		FUNC0(product),
		FUNC0(vendor));

	if (FUNC2(i, "xkb_active_layout_name", &kbdlayout)) {
		const char *layout = FUNC1(kbdlayout);
		FUNC4("  Active Keyboard Layout: %s\n", layout ? layout : "(unnamed)");
	}

	if (FUNC2(i, "libinput", &libinput)) {
		json_object *events;
		if (FUNC2(libinput, "send_events", &events)) {
			FUNC4("  Libinput Send Events: %s\n",
					FUNC1(events));
		}
	}

	FUNC4("\n");
}