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
typedef  char const* PCSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MSG_ACCESS_NG ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_HINT_LINK ; 
 int /*<<< orphan*/  MSG_LINK_FULL ; 
 int /*<<< orphan*/  MSG_LINK_NG ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_NOT_STARTED ; 
 int /*<<< orphan*/  MSG_TARGET_NOTICE ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int TARGET_NONE ; 
 scalar_t__ TRUE ; 
 int VFD_MAXIMUM_DEVICES ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 scalar_t__ FUNC12 (char const) ; 
 scalar_t__ FUNC13 (char const) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(const char **args)
{
	ULONG	target_min = TARGET_NONE;
	ULONG	target_max = TARGET_NONE;
	PCSTR	letters = NULL;
	BOOL	global	= TRUE;
	HANDLE	hDevice;
	DWORD	ret;

	while (args && *args) {
		if (!FUNC11(*args, "/g")) {
			global = TRUE;
		}
		else if (!FUNC11(*args, "/l")) {
			global = FALSE;
		}
		else if (FUNC13(**args) || **args == '*') {
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
		else if (FUNC12(**args)) {
			if (letters) {
				FUNC4(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}
			letters = *args;
		}
		else {
			FUNC4(MSG_UNKNOWN_OPTION, *args);
			FUNC4(MSG_HINT_LINK, help_progname);
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
		CHAR letter;

		hDevice = FUNC8(target_min);

		if (hDevice == INVALID_HANDLE_VALUE) {
			ret = FUNC2();
			FUNC4(MSG_ACCESS_NG, target_min);
			FUNC14("%s", FUNC5(ret));
			target_min++;
			continue;
		}

		ret = FUNC7(hDevice, &number);

		if (ret != ERROR_SUCCESS) {
			FUNC4(MSG_ACCESS_NG, target_min);
			FUNC14("%s", FUNC5(ret));
			FUNC1(hDevice);
			target_min++;
			continue;
		}

		if (letters && FUNC12(*letters)) {
			letter = (CHAR)FUNC15(*(letters++));
		}
		else {
			letter = FUNC6();
		}

		if (letter) {
			if (global) {
				ret = FUNC9(hDevice, letter);
			}
			else {
				ret = FUNC10(hDevice, letter);
			}

			if (ret != ERROR_SUCCESS) {
				FUNC4(MSG_LINK_NG, number, letter);
				FUNC14("%s", FUNC5(ret));
			}
		}
		else {
			FUNC4(MSG_LINK_FULL);
		}

		FUNC3(hDevice, number);

		FUNC1(hDevice);

		target_min++;
	}

	return VFD_OK;
}