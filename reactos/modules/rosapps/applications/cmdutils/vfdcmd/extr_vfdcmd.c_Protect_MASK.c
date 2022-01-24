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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_WRITE_PROTECT ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MSG_ACCESS_NG ; 
 int /*<<< orphan*/  MSG_DUPLICATE_ARGS ; 
 int /*<<< orphan*/  MSG_GET_MEDIA_NG ; 
 int /*<<< orphan*/  MSG_HINT_PROTECT ; 
 int /*<<< orphan*/  MSG_MEDIA_PROTECTED ; 
 int /*<<< orphan*/  MSG_MEDIA_WRITABLE ; 
 int /*<<< orphan*/  MSG_NOT_INSTALLED ; 
 int /*<<< orphan*/  MSG_NOT_STARTED ; 
 int /*<<< orphan*/  MSG_PROTECT_NG ; 
 int /*<<< orphan*/  MSG_TARGET_NOTICE ; 
 int /*<<< orphan*/  MSG_UNKNOWN_OPTION ; 
 scalar_t__ PROTECT_NONE ; 
 scalar_t__ PROTECT_OFF ; 
 scalar_t__ PROTECT_ON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ SERVICE_RUNNING ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ TARGET_NONE ; 
 int VFD_NG ; 
 scalar_t__ VFD_NOT_INSTALLED ; 
 scalar_t__ VFD_OK ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ driver_state ; 
 int /*<<< orphan*/  help_progname ; 
 scalar_t__ FUNC9 (char const) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char const) ; 

int	FUNC12(const char **args)
{
#define PROTECT_NONE	0
#define PROTECT_ON		1
#define PROTECT_OFF		2
	ULONG	protect	= PROTECT_NONE;
	ULONG	target	= TARGET_NONE;
	HANDLE	hDevice;
	DWORD	ret;

	//	check parameters

	while (args && *args) {

		//	Disk type options

		if (FUNC8(*args, "/on") == 0) {

			if (protect) {
				FUNC3(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			protect = PROTECT_ON;
		}
		else if (FUNC8(*args, "/off") == 0) {

			if (protect) {
				FUNC3(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			protect = PROTECT_OFF;
		}
		else if (FUNC9(**args)) {
			
			if (target != TARGET_NONE) {
				FUNC3(MSG_DUPLICATE_ARGS, *args);
				return VFD_NG;
			}

			target = FUNC11(**args);
		}
		else {
			FUNC3(MSG_UNKNOWN_OPTION, *args);
			FUNC3(MSG_HINT_PROTECT, help_progname);
			return VFD_NG;
		}

		args++;
	}

	if (target == TARGET_NONE) {
		target = '0';
		FUNC3(MSG_TARGET_NOTICE, target);
	}

	//	ensure that the driver is installed

	if (driver_state == VFD_NOT_INSTALLED) {
		FUNC3(MSG_NOT_INSTALLED);
		return VFD_NG;
	}

	//	ensure that the driver is up to date

	if (FUNC0() != VFD_OK) {
		return VFD_NG;
	}

	//	ensure that the driver is running

	if (driver_state != SERVICE_RUNNING) {
		FUNC3(MSG_NOT_STARTED);
		return VFD_NG;
	}

	//	open the target drive

	hDevice = FUNC6(target);

	if (hDevice == INVALID_HANDLE_VALUE) {
		ret = FUNC2();
		FUNC3(MSG_ACCESS_NG, target);
		FUNC10("%s", FUNC4(ret));
		return VFD_NG;
	}

	if (protect) {
		//	change protect state

		ret = FUNC7(
			hDevice, (protect == PROTECT_ON));

		if (ret != ERROR_SUCCESS) {
			FUNC3(MSG_PROTECT_NG, target);
			FUNC10("%s", FUNC4(ret));

			FUNC1(hDevice);
			return VFD_NG;
		}
	}

	//	get the current protect state

	ret = FUNC5(hDevice);

	FUNC1(hDevice);

	if (ret == ERROR_SUCCESS) {
		FUNC3(MSG_MEDIA_WRITABLE);
	}
	else if (ret == ERROR_WRITE_PROTECT) {
		FUNC3(MSG_MEDIA_PROTECTED);
	}
	else {
		FUNC3(MSG_GET_MEDIA_NG);
		FUNC10("%s", FUNC4(ret));
		return VFD_NG;
	}

	return VFD_OK;
}