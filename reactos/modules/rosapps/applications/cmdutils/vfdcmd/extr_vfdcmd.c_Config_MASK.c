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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSG_CONFIG_NG ; 
 int /*<<< orphan*/  MSG_CONFIG_OK ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_HINT_CONFIG ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_AUTO_START ; 
 scalar_t__ SERVICE_DEMAND_START ; 
 scalar_t__ SERVICE_DISABLED ; 
 char* FUNC2 (scalar_t__) ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int	FUNC6(const char **args)
{
	DWORD	start_type = SERVICE_DISABLED;
	DWORD	ret;

	while (args && *args) {
		if (!FUNC4(*args, "/a") ||
			!FUNC4(*args, "/auto")) {

			if (start_type != SERVICE_DISABLED) {
				FUNC1(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			start_type = SERVICE_AUTO_START;
		}
		else if (!FUNC4(*args, "/m") ||
			!FUNC4(*args, "/manual")) {

			if (start_type != SERVICE_DISABLED) {
				FUNC1(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			start_type = SERVICE_DEMAND_START;
		}
		else {
			FUNC1(MSG_UNKNOWN_OPTION, *args);
			FUNC1(MSG_HINT_CONFIG, help_progname);
			return VFD_NG;
		}

		args++;
	}

	if (start_type == SERVICE_DISABLED) {
		//	no parameter is specified
		FUNC1(MSG_HINT_CONFIG, help_progname);
		return VFD_NG;
	}

	//	ensure that the driver is installed

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC1(MSG_NOT_INSTALLED);
		return VFD_NG;
	}

	//	ensure that the driver is up to date

	if (FUNC0() != VFD_OK) {
		return VFD_NG;
	}

	//	configure the driver

	ret = FUNC3(start_type);

	if (ret != ERROR_SUCCESS) {
		FUNC1(MSG_CONFIG_NG);
		FUNC5("%s", FUNC2(ret));
		return VFD_NG;
	}

	//	operation successfull

	FUNC1(MSG_CONFIG_OK);

	return VFD_OK;
}