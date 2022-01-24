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
 scalar_t__ FUNC0 (char const**) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_HINT_STOP ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_NOT_STARTED ; 
 int /*<<< orphan*/  MSG_RETRY_FORCE_CANCEL ; 
 int /*<<< orphan*/  MSG_STOP_FORCE ; 
 int /*<<< orphan*/  MSG_STOP_NG ; 
 int /*<<< orphan*/  MSG_STOP_OK ; 
 int /*<<< orphan*/  MSG_STOP_PENDING ; 
 int /*<<< orphan*/  MSG_STOP_QUIT ; 
 int /*<<< orphan*/  MSG_STOP_WARN ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int OPERATION_ASK ; 
 int OPERATION_FORCE ; 
 int OPERATION_QUIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 scalar_t__ SERVICE_STOPPED ; 
 char* FUNC3 (scalar_t__) ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int	FUNC7(const char **args)
{
	int			mode = OPERATION_ASK;
	const char	*close_params[] = { "*", NULL, NULL };
	DWORD		ret;

	while (args && *args) {
		if (!FUNC5(*args, "/f") ||
			!FUNC5(*args, "/force")) {

			if (mode != OPERATION_ASK) {
				FUNC2(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_FORCE;

			//	parameter to pass to the Close() function
			close_params[1] = *args;
		}
		else if (!FUNC5(*args, "/q") ||
			!FUNC5(*args, "/quit")) {

			if (mode != OPERATION_ASK) {
				FUNC2(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_QUIT;

			//	parameter to pass to the Close() function
			close_params[1] = *args;
		}
		else {
			FUNC2(MSG_UNKNOWN_OPTION, *args);
			FUNC2(MSG_HINT_STOP, help_progname);
			return VFD_NG;
		}

		args++;
	}

	//	ensure that the driver is installed

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC2(MSG_NOT_INSTALLED);
		return VFD_NG;
	}

	//	ensure that the driver is running

	if (driver_state == SERVICE_STOPPED) {
		FUNC2(MSG_NOT_STARTED);
		return VFD_NG;
	}

	//	ensure that all drives are empty

	if (driver_state == SERVICE_RUNNING) {

		//	Try to close drives with the same operation mode (/F or /Q)

		while (FUNC0(close_params) != VFD_OK) {

			//	close failed

			if (mode == OPERATION_FORCE) {
				FUNC2(MSG_STOP_FORCE);
				break;
			}
			else if (mode == OPERATION_QUIT) {
				FUNC2(MSG_STOP_QUIT);
				return VFD_NG;
			}
			else {
				int c;

				FUNC2(MSG_STOP_WARN);

				c = FUNC1(MSG_RETRY_FORCE_CANCEL, "rfc");

				if (c == 'f') {			//	force
					break;
				}
				else if (c == 'c') {	//	cancel
					return VFD_NG;
				}
			}
		}
	}

	//	stop the driver

	ret = FUNC4(&driver_state);

	if (ret != ERROR_SUCCESS) {
		FUNC2(MSG_STOP_NG);
		FUNC6("%s", FUNC3(ret));
		return VFD_NG;
	}

	if (driver_state != SERVICE_STOPPED) {
		FUNC2(MSG_STOP_PENDING);
		return VFD_NG;
	}

	//	operation successful

	FUNC2(MSG_STOP_OK);

	return VFD_OK;
}