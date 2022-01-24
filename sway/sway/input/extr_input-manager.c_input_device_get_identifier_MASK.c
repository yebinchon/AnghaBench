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
struct wlr_input_device {int vendor; int product; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,int,char const*,int,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

char *FUNC6(struct wlr_input_device *device) {
	int vendor = device->vendor;
	int product = device->product;
	char *name = FUNC3(device->name);
	FUNC4(name);

	char *p = name;
	for (; *p; ++p) {
		if (*p == ' ') {
			*p = '_';
		}
	}

	const char *fmt = "%d:%d:%s";
	int len = FUNC2(NULL, 0, fmt, vendor, product, name) + 1;
	char *identifier = FUNC1(len);
	if (!identifier) {
		FUNC5(SWAY_ERROR, "Unable to allocate unique input device name");
		return NULL;
	}

	FUNC2(identifier, len, fmt, vendor, product, name);
	FUNC0(name);
	return identifier;
}