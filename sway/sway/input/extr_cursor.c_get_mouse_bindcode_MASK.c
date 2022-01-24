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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  EV_KEY ; 
 scalar_t__ errno ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int,char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char**,int) ; 

uint32_t FUNC7(const char *name, char **error) {
	// Validate event code
	errno = 0;
	char *endptr;
	int code = FUNC6(name, &endptr, 10);
	if (endptr == name && code <= 0) {
		*error = FUNC3("Button event code must be a positive integer.");
		return 0;
	} else if (errno == ERANGE) {
		*error = FUNC3("Button event code out of range.");
		return 0;
	}
	const char *event = FUNC0(EV_KEY, code);
	if (!event || FUNC5(event, "BTN_", FUNC4("BTN_")) != 0) {
		size_t len = FUNC2(NULL, 0, "Event code %d (%s) is not a button",
				code, event) + 1;
		*error = FUNC1(len);
		if (*error) {
			FUNC2(*error, len, "Event code %d (%s) is not a button",
					code, event);
		}
		return 0;
	}
	return code;
}