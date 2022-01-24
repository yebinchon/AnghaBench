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
 scalar_t__ ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_GET_STAT_NG ; 
 int /*<<< orphan*/  MSG_HINT_REMOVE ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_REMOVE_FORCE ; 
 int /*<<< orphan*/  MSG_REMOVE_NG ; 
 int /*<<< orphan*/  MSG_REMOVE_OK ; 
 int /*<<< orphan*/  MSG_REMOVE_PENDING ; 
 int /*<<< orphan*/  MSG_REMOVE_QUIT ; 
 int /*<<< orphan*/  MSG_REMOVE_WARN ; 
 int /*<<< orphan*/  MSG_RETRY_FORCE_CANCEL ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int OPERATION_ASK ; 
 int OPERATION_FORCE ; 
 int OPERATION_QUIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const**) ; 
 char* FUNC4 (scalar_t__) ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int	FUNC9(const char **args)
{
	int			mode = OPERATION_ASK;
	const char	*stop_params[] = { NULL, NULL };
	DWORD		ret;
	int			idx;

	//	parse parameters

	while (args && *args) {

		if (!FUNC7(*args, "/f") ||
			!FUNC7(*args, "/force")) {

			if (mode != OPERATION_ASK) {
				FUNC1(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_FORCE;
			stop_params[0] = *args;
		}
		else if (!FUNC7(*args, "/q") ||
			!FUNC7(*args, "/quit")) {

			if (mode != OPERATION_ASK) {
				FUNC1(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_QUIT;
			stop_params[0] = *args;
		}
		else {
			FUNC1(MSG_UNKNOWN_OPTION, *args);
			FUNC1(MSG_HINT_REMOVE, help_progname);
			return VFD_NG;
		}

		args++;
	}

	//	ensure the driver is installed

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC1(MSG_NOT_INSTALLED);
		return VFD_NG;
	}

	//	ensure the driver is stopped

	if (driver_state == SERVICE_RUNNING) {

		//	Try to stop with the same command line option (/F or /Q)

		while (FUNC3(stop_params) != VFD_OK) {

			//	stop failed

			if (mode == OPERATION_FORCE) {
				FUNC1(MSG_REMOVE_FORCE);
				break;
			}
			else if (mode == OPERATION_QUIT) {
				FUNC1(MSG_REMOVE_QUIT);
				return VFD_NG;
			}
			else {
				int c;

				FUNC1(MSG_REMOVE_WARN);

				c = FUNC0(MSG_RETRY_FORCE_CANCEL, "rfc");

				if (c == 'f') {			//	force
					break;
				}
				else if (c == 'c') {	//	cancel
					return VFD_NG;
				}
			}
		}
	}

	//	remove the driver

	ret = FUNC6();

	if (ret != ERROR_SUCCESS) {
		FUNC1(MSG_REMOVE_NG);
		FUNC8("%s", FUNC4(ret));
		return VFD_NG;
	}

	// Wait for the driver to be actually removed for 3 secs Max.

	for (idx = 0; idx < 10; idx++) {

		ret = FUNC5(&driver_state);

		if (ret != ERROR_SUCCESS) {
			FUNC1(MSG_GET_STAT_NG);
			FUNC8("%s", FUNC4(ret));
			return VFD_NG;
		}

		if (driver_state == VFD_NOT_INSTALLED) {
			break;
		}

		FUNC2(300);
	}

	if (driver_state != VFD_NOT_INSTALLED) {
		FUNC1(MSG_REMOVE_PENDING);
		return VFD_NG;
	}

	//	operation successful

	FUNC1(MSG_REMOVE_OK);

	return VFD_OK;
}