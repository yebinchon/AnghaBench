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
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MSG_ACCESS_NG ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_FORMAT_FORCE ; 
 int /*<<< orphan*/  MSG_FORMAT_NG ; 
 int /*<<< orphan*/  MSG_FORMAT_OK ; 
 int /*<<< orphan*/  MSG_FORMAT_QUIT ; 
 int /*<<< orphan*/  MSG_HINT_FORMAT ; 
 int /*<<< orphan*/  MSG_LOCK_NG ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_NOT_STARTED ; 
 int /*<<< orphan*/  MSG_RETRY_FORCE_CANCEL ; 
 int /*<<< orphan*/  MSG_TARGET_NOTICE ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int OPERATION_ASK ; 
 int OPERATION_FORCE ; 
 int OPERATION_QUIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_NONE ; 
 int TRUE ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 scalar_t__ FUNC11 (char const) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const) ; 

int	FUNC14(const char **args)
{
	int		mode = OPERATION_ASK;
	ULONG	target	= TARGET_NONE;
	HANDLE	hDevice;
	DWORD	ret;

	//	check parameters

	while (args && *args) {

		if (!FUNC10(*args, "/f") ||
			!FUNC10(*args, "/force")) {

			if (mode != OPERATION_ASK) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_FORCE;
		}
		else if (!FUNC10(*args, "/q") ||
			!FUNC10(*args, "/quit")) {

			if (mode != OPERATION_ASK) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_QUIT;
		}
		else if (FUNC11(**args)) {
			if (target != TARGET_NONE) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			target = FUNC13(**args);
		}
		else {
			FUNC4(MSG_UNKNOWN_OPTION, *args);
			FUNC4(MSG_HINT_FORMAT, help_progname);
			return VFD_NG;
		}

		args++;
	}

	if (target == TARGET_NONE) {
		target = '0';
		FUNC4(MSG_TARGET_NOTICE, target);
	}

	//	ensure that the driver is installed

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC4(MSG_NOT_INSTALLED);
		return VFD_NG;
	}

	//	ensure that the driver is up to date

	if (FUNC0() != VFD_OK) {
		return VFD_NG;
	}

	//	ensure that the driver is running

	if (driver_state != SERVICE_RUNNING) {
		FUNC4(MSG_NOT_STARTED);
		return VFD_NG;
	}

	//	Open the device

	hDevice = FUNC9(target);

	if (hDevice == INVALID_HANDLE_VALUE) {
		ret = FUNC2();
		FUNC4(MSG_ACCESS_NG, target);
		FUNC12("%s", FUNC5(ret));
		return VFD_NG;
	}

	//	check if the media is writable

	ret = FUNC8(hDevice);

	if (ret != ERROR_SUCCESS) {
		FUNC4(MSG_FORMAT_NG, target);
		FUNC12("%s", FUNC5(ret));

		FUNC1(hDevice);
		return VFD_NG;
	}

	//	format the media

retry:
	ret = FUNC6(
		hDevice, (mode == OPERATION_FORCE));

	if (ret == ERROR_ACCESS_DENIED) {

		FUNC4(MSG_LOCK_NG, target);

		if (mode == OPERATION_FORCE) {
			FUNC4(MSG_FORMAT_FORCE);
		}
		else if (mode == OPERATION_QUIT) {
			FUNC4(MSG_FORMAT_QUIT);
			FUNC1(hDevice);
			return VFD_NG;
		}
		else {
			int c = FUNC3(MSG_RETRY_FORCE_CANCEL, "rfc");

			if (c == 'r') {			// retry
				goto retry;
			}
			else if (c == 'f') {	//	force
				FUNC6(hDevice, TRUE);
			}
			else {					//	cancel
				FUNC1(hDevice);
				return VFD_NG;
			}
		}
	}
	else if (ret != ERROR_SUCCESS) {
		FUNC4(MSG_LOCK_NG, target);
		FUNC1(hDevice);
		return VFD_NG;
	}

	ret = FUNC7(hDevice);

	FUNC1(hDevice);

	if (ret != ERROR_SUCCESS) {
		FUNC4(MSG_FORMAT_NG, target);
		FUNC12("%s", FUNC5(ret));
		return VFD_NG;
	}

	//	successful operation

	FUNC4(MSG_FORMAT_OK);

	return VFD_OK;
}