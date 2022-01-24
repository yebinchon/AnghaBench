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
typedef  int /*<<< orphan*/  VFD_MEDIA ;
typedef  int VFD_FLAGS ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_NOT_READY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC2 () ; 
 char FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MSG_ACCESS_NG ; 
 int /*<<< orphan*/  MSG_CLOSE_CONFIRM ; 
 int /*<<< orphan*/  MSG_CLOSE_FORCE ; 
 int /*<<< orphan*/  MSG_CLOSE_NG ; 
 int /*<<< orphan*/  MSG_CLOSE_OK ; 
 int /*<<< orphan*/  MSG_CLOSE_QUIT ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_HINT_CLOSE ; 
 int /*<<< orphan*/  MSG_LOCK_NG ; 
 int /*<<< orphan*/  MSG_MEDIA_MODIFIED ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_NOT_STARTED ; 
 int /*<<< orphan*/  MSG_RETRY_CANCEL ; 
 int /*<<< orphan*/  MSG_RETRY_FORCE_CANCEL ; 
 int /*<<< orphan*/  MSG_TARGET_NOTICE ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 scalar_t__ OPERATION_ASK ; 
 scalar_t__ OPERATION_FORCE ; 
 scalar_t__ OPERATION_QUIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_NONE ; 
 int TRUE ; 
 int VFD_FLAG_DATA_MODIFIED ; 
 scalar_t__ VFD_MAXIMUM_DEVICES ; 
 int /*<<< orphan*/  VFD_MEDIA_NONE ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 int VFD_OK ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 scalar_t__ help_progname ; 
 scalar_t__ FUNC10 (char const) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char const) ; 

int	FUNC13(const char **args)
{
	ULONG			mode = OPERATION_ASK;

	ULONG			target_min = TARGET_NONE;
	ULONG			target_max = TARGET_NONE;
	HANDLE			hDevice;

	VFD_MEDIA		media_type;
	VFD_FLAGS		media_flags;

	DWORD			ret;

	//	check parameterS

	while (args && *args) {

		if (!FUNC9(*args, "/f") ||
			!FUNC9(*args, "/force")) {

			if (mode != OPERATION_ASK) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_FORCE;
		}
		else if (!FUNC9(*args, "/q") ||
			!FUNC9(*args, "/quit")) {

			if (mode != OPERATION_ASK) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			mode = OPERATION_QUIT;
		}
		else if ((FUNC10(**args) || **args == '*') &&
			(*(*args + 1) == ':' || *(*args + 1) == '\0')) {

			if (target_min != TARGET_NONE) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			if (**args == '*') {
				target_min = '0';
				target_max = '0' + VFD_MAXIMUM_DEVICES;
			}
			else {
				target_min = FUNC12(**args);
				target_max = target_min + 1;
			}
		}
		else {
			FUNC4(MSG_UNKNOWN_OPTION, *args);
			FUNC4(MSG_HINT_CLOSE, help_progname);
			return VFD_NG;
		}

		args++;
	}

	if (target_min == TARGET_NONE) {
		// default target = drive 0
		target_min = '0';
		target_max = '1';
		FUNC4(MSG_TARGET_NOTICE, target_min);
	}

	//	ensure that the driver is installed

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC4(MSG_NOT_INSTALLED);
		return VFD_NG;
	}

	//	ensure that the driver is running

	if (driver_state != SERVICE_RUNNING) {
		FUNC4(MSG_NOT_STARTED);
		return VFD_NG;
	}

	//	Close the drive(s)

	while (target_min < target_max) {

		//	open the target device

		hDevice = FUNC8(target_min);

		if (hDevice == INVALID_HANDLE_VALUE) {
			ret = FUNC1();

			FUNC4(MSG_ACCESS_NG, target_min);
			FUNC11("%s", FUNC5(ret));

			if (mode != OPERATION_FORCE) {
				return VFD_NG;
			}

			target_min++;
			continue;
		}

		//	get the current image information

		ret = FUNC7(hDevice, NULL, NULL,
			&media_type, &media_flags, NULL, NULL);

		if (ret != ERROR_SUCCESS) {
			FUNC4(MSG_ACCESS_NG, target_min);
			FUNC11("%s", FUNC5(ret));

			FUNC0(hDevice);

			if (mode != OPERATION_FORCE) {
				return VFD_NG;
			}

			target_min++;
			continue;
		}

		if (media_type == VFD_MEDIA_NONE) {

			//	drive is empty

			FUNC0(hDevice);
			target_min++;
			continue;
		}

		if (media_flags & VFD_FLAG_DATA_MODIFIED) {

			//	RAM disk data is modified

			FUNC4(MSG_MEDIA_MODIFIED, target_min);

			if (mode == OPERATION_FORCE) {
				FUNC4(MSG_CLOSE_FORCE);
			}
			else if (mode == OPERATION_QUIT) {
				FUNC4(MSG_CLOSE_QUIT);
				FUNC0(hDevice);
				return VFD_NG;
			}
			else {
				if (FUNC3(MSG_CLOSE_CONFIRM, "yn") == 'n') {
					FUNC0(hDevice);
					return VFD_NG;
				}
			}
		}

retry:
		ret = FUNC6(
			hDevice, (mode == OPERATION_FORCE));
			
		if (ret == ERROR_ACCESS_DENIED) {

			FUNC4(MSG_LOCK_NG, target_min);

			if (mode == OPERATION_QUIT) {
				FUNC0(hDevice);
				return VFD_NG;
			}
			else if (mode == OPERATION_ASK) {

				int c;

				if (FUNC2()) {
					c = FUNC3(MSG_RETRY_CANCEL, "rc");
				}
				else {
					c = FUNC3(MSG_RETRY_FORCE_CANCEL, "rfc");
				}

				if (c == 'f') {				//	force
					ret = FUNC6(hDevice, TRUE);
				}
				else if (c == 'c') {		//	cancel
					FUNC0(hDevice);
					return VFD_NG;
				}
				else {
					goto retry;
				}
			}
		}

		FUNC0(hDevice);

		if (ret == ERROR_SUCCESS) {
			FUNC4(MSG_CLOSE_OK, target_min);
		}
		else if (ret != ERROR_NOT_READY) {
			FUNC4(MSG_CLOSE_NG, target_min);
			FUNC11("%s", FUNC5(ret));

			if (mode != OPERATION_FORCE) {
				return VFD_NG;
			}
		}

		target_min++;
	}

	return VFD_OK;
}