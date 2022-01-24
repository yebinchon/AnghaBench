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
typedef  int ULONG ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MSG_ACCESS_NG ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_HINT_ULINK ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_NOT_STARTED ; 
 int /*<<< orphan*/  MSG_TARGET_NOTICE ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int TARGET_NONE ; 
 int VFD_MAXIMUM_DEVICES ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ driver_state ; 
 int help_progname ; 
 scalar_t__ FUNC10 (char const) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int FUNC12(const char **args)
{
	ULONG	target_min = TARGET_NONE;
	ULONG	target_max = TARGET_NONE;
	HANDLE	hDevice;
	DWORD	ret;

	while (args && *args) {
		if ((FUNC10(**args) || **args == '*') &&
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
				target_min = **args;
				target_max = target_min + 1;
			}
		}
		else {
			FUNC4(MSG_UNKNOWN_OPTION, *args);
			FUNC4(MSG_HINT_ULINK, help_progname);
			return VFD_NG;
		}

		args++;
	}

	if (target_min == TARGET_NONE) {
		// default: drive 0
		target_min = '0';
		target_max = '1';
		FUNC4(MSG_TARGET_NOTICE, target_min);
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

	while (target_min < target_max) {
		ULONG number;

		hDevice = FUNC7(target_min);

		if (hDevice == INVALID_HANDLE_VALUE) {
			ret = FUNC2();
			FUNC4(MSG_ACCESS_NG, target_min);
			FUNC11("%s", FUNC5(ret));
			target_min++;
			continue;
		}

		ret = FUNC6(hDevice, &number);

		if (ret != ERROR_SUCCESS) {
			FUNC4(MSG_ACCESS_NG, target_min);
			FUNC11("%s", FUNC5(ret));
			FUNC1(hDevice);
			target_min++;
			continue;
		}

		FUNC8(hDevice, 0);
		FUNC9(hDevice, 0);

		FUNC3(hDevice, number);

		FUNC1(hDevice);

		target_min++;
	}

	return VFD_OK;
}